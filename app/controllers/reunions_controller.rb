class ReunionsController < ApplicationController
  # GET /reunions
  # GET /reunions.json
  def index
    @reunions = Reunion.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @reunions }
    end
  end

  # GET /reunions/1
  # GET /reunions/1.json
  def show
    @reunion = Reunion.find(params[:id])
    @asistentes = Reunion.find_by_sql('SELECT P.nombre
                                     FROM Profesors P
                                         ,Reunions_Estudiantes ER
                                    WHERE P.id = ER.estudiante_id
                                      AND ER.reunion_id = ' + @reunion.id.to_s +
                                  ' UNION ALL ' +
                                  'SELECT E.nombreEstudiante nombre
                                     FROM Estudiantes E
                                         ,Reunions_Estudiantes ER
                                    WHERE E.id = ER.estudiante_id
                                      AND ER.reunion_id = ' + @reunion.id.to_s )
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @reunion }
    end
  end

  # GET /reunions/new
  # GET /reunions/new.json
  def new
    @reunion = Reunion.new
    if params[:tesisId].nil? then
      @tesis = Tese.all
    else
      @tesis = Tese.find(params[:tesisId])
      @asistentes = Reunion.find_by_sql('SELECT P.Id
                                               ,P.Nombre
                                     FROM Profesors P
                                         ,Teses T
                                    WHERE P.id = T.Profesor_id
                                      AND T.id = ' + @tesis.id.to_s +
                                  ' UNION ALL ' +
                                  'SELECT E.Id
                                         ,E.nombreEstudiante Nombre
                                     FROM Estudiantes E
                                         ,Teses T
                                    WHERE E.Tesis_id = T.id
                                      AND T.id = ' + @tesis.id.to_s )
    end

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @reunion }
    end
  end

  # GET /reunions/1/edit
  def edit
    @reunion = Reunion.find(params[:id])
    
  end

  # POST /reunions
  # POST /reunions.json
  def create

    @reunion = Reunion.new(params[:reunion])
    asistente_ids = params[:asistente_ids]
    respond_to do |format|
      unless asistente_ids.nil? or asistente_ids.size < 2 then
        if @reunion.save

          asistente_ids.each do |asistente|
            @Asistente = ReunionsEstudiantes.new(:reunion_id => @reunion.id, :estudiante_id => asistente, :finalizado => false)
            @Asistente.save

            estudiante = Estudiante.find(:all, :conditions => [ "id = ?", asistente ])

            if asistente.to_f < 100 then
              datosAsist = {:nombre => estudiante[0].nombreEstudiante,
                            :correo => estudiante[0].correoElectronico + "@uniandes.edu.co"}
            else
              profesor = Profesor.find(asistente)
              correo = "harjair@hotmail.com"
              datosAsist = {:nombre => profesor.nombre, :correo => correo}
            end

            UserMailer.notificar_reunion(datosAsist, @reunion).deliver
          end

          format.html { redirect_to @reunion, notice: 'Reunion creada exitosamente.' }
          format.json { render json: @reunion, status: :created, location: @reunion }

        else
          format.html { render action: "new" }
          format.json { render json: @reunion.errors, status: :unprocessable_entity }
        end
      else
          @reunion.errors[:estudiante_ids] = "Seleccione al menos dos asistentes a la reunión"
          format.html { render action: "new" }
          format.json { render json: @reunion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /reunions/1
  # PUT /reunions/1.json
  def update
    @reunion = Reunion.find(params[:id])

    respond_to do |format|
      if @reunion.update_attributes(params[:reunion])
        format.html { redirect_to @reunion, notice: 'Reunion actualizada exitosamente.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @reunion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reunions/1
  # DELETE /reunions/1.json
  def destroy
    @reunion = Reunion.find(params[:id])
    asistente_ids = ReunionsEstudiantes.find_by_sql('SELECT DISTINCT E.estudiante_id
                                                      FROM Reunions_Estudiantes E 
                                                     WHERE E.reunion_id = ' + params[:id].to_s)

    asistente_ids.each do |asistente|
      estudiante = Estudiante.find(:all, :conditions => [ "id = ?", asistente.estudiante_id ])
      if asistente.estudiante_id.to_f < 100 then
        datosAsist = {:nombre => estudiante[0].nombreEstudiante,
                      :correo => estudiante[0].correoElectronico + "@uniandes.edu.co"}
      else
        profesor = Profesor.find(:all, :conditions => [ "id = ?", asistente.estudiante_id ])
        correo = "harjair@hotmail.com"
        datosAsist = {:nombre => profesor[0].nombre, :correo => correo}
      end
      UserMailer.cancelar_reunion(datosAsist, @reunion).deliver
    end

    @reunion.destroy

    respond_to do |format|
      format.html { redirect_to(reunions_url, notice: 'Reunion cancelada exitosamente.') }
      format.json { head :no_content }
    end
  end

  def delete
    @reunion = Reunion.find(params[:id])
    @reunion.destroy

    respond_to do |format|
      format.html { redirect_to reunions_url }
      format.json { head :no_content }
    end
  end
end
