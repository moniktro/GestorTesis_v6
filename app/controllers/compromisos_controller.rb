class CompromisosController < ApplicationController
  # GET /compromisos
  # GET /compromisos.json
  def index
    tesisId = params[:tesisId]

    if tesisId.nil?
      @tesis = Tese.all
      @compromisos = Compromiso.find(:all, :conditions => ["Finalizado = 0 OR Finalizado IS NULL"], :order => ["fechaLimite ASC"])
    else
      @tesis = Tese.find(:all, :conditions => [ "id = ?", tesisId ])
      @compromisos = Compromiso.find(:all, :conditions => ["Finalizado = 0 OR Finalizado IS NULL"], :order => ["fechaLimite ASC"])
    end

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @tesis }
    end
  end

  # GET /compromisos/1
  # GET /compromisos/1.json
  def show
    @compromiso = Compromiso.find(params[:id])
    @estudiantes = Estudiante.find_by_sql('SELECT E.codigoEstudiante,
                                                  E.nombreEstudiante,
                                                  E.tesis_id
                                             FROM Estudiantes E
                                                 ,Compromisos_Estudiantes EC
                                                 ,Compromisos C
                                            WHERE E.id = EC.Estudiante_id
                                              AND C.id = EC.Compromiso_id
                                              AND C.id = ' + params[:id])

    @estudiantes.each do |t|
      @tesis = Tese.find(t.tesis_id)
    end

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @compromiso }
    end
  end

  # GET /compromisos/new
  # GET /compromisos/new.json
  def new
    if params[:tesisId].nil? then
      @tesis = Tese.all
    else
      @tesis = Tese.find(params[:tesisId])
    end

    @compromiso = Compromiso.new
    @estudiantes = Estudiante.find_all_by_tesis_id(params[:tesisId])

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @compromiso }
    end
  end

  # GET /compromisos/1/edit
  def edit
    @compromiso = Compromiso.find(params[:id])
    @estudiantes = Estudiante.find_by_sql('SELECT E.codigoEstudiante,
                                                  E.nombreEstudiante,
                                                  E.tesis_id
                                             FROM Estudiantes E
                                                 ,Compromisos_Estudiantes EC
                                                 ,Compromisos C
                                            WHERE E.id = EC.Estudiante_id
                                              AND C.id = EC.Compromiso_id
                                              AND C.id = ' + params[:id])
    @estudiantes.each do |t|
      @tesis = Tese.find(t.tesis_id)
    end
  end

  # POST /compromisos
  # POST /compromisos.json
  def create
    @compromiso = Compromiso.new(params[:compromiso])
    @compromiso.finalizado = false
    estudiante_ids = params[:estudiante_ids]

    respond_to do |format|
      if @compromiso.save
        estudiante_ids.each do |i|
            @comp_est = CompromisosEstudiantes.new(:compromiso_id => @compromiso.id, :estudiante_id => i, :finalizado => 0)
            @comp_est.save
        end

        format.html { redirect_to @compromiso, notice: 'Compromiso creado y asignado exitosamente.' }
        format.json { render json: @compromiso, status: :created, location: @compromiso }
      else
        format.html { render action: "new" }
        format.json { render json: @compromiso.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /compromisos/1
  # PUT /compromisos/1.json
  def update
    @compromiso = Compromiso.find(params[:id])

    respond_to do |format|
      if @compromiso.update_attributes(params[:compromiso])
        format.html { redirect_to @compromiso, notice: 'Compromiso actualizado exitosamente.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @compromiso.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /obligacions/1
  # DELETE /obligacions/1.json
  def destroy
    @compromiso = Compromiso.find(params[:id])
    @compromiso.destroy

    respond_to do |format|
      format.html { redirect_to(compromisos_url) }
      format.json { head :no_content }
    end
  end

   def delete
    @compromiso = Compromiso.find(params[:id])
    @compromiso.destroy

    respond_to do |format|
      format.html { redirect_to(compromisos_url) }
      format.json { head :no_content }
    end
  end
end
