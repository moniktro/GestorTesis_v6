class EstudiantesController < ApplicationController
  def index
    @estudiantes = Estudiante.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @estudiantes }
    end
  end

  def show
    @estudiante = Estudiante.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @estudiante }
    end
  end

  def new
    if params[:tesisId].nil? then
      @tesis = Tese.all
    else
      @tesis = Tese.find(params[:tesisId])
    end
    @estudiante = Estudiante.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @estudiante }
    end
  end

  def edit
    @estudiante = Estudiante.find(params[:id])
  end

  def create
    @estudiante = Estudiante.new(params[:estudiante])

    respond_to do |format|
      if @estudiante.save
        format.html { redirect_to teses_path(), notice: 'Estudiante Agregado Exitosamente' }
        format.json { render json: @estudiante, status: :created, location: @estudiante }
      else
        format.html { render action: "new" }
        format.json { render json: @estudiante.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @estudiante = Estudiante.find(params[:id])

    respond_to do |format|
      if @estudiante.update_attributes(params[:estudiante])
        format.html { redirect_to @estudiante, notice: 'Estudiante Actualizado Exitosamente ' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @estudiante.errors, status: :unprocessable_entity }
      end
    end
  end


  def destroy
    @estudiante = Estudiante.find(params[:id])
    @estudiante.destroy

    respond_to do |format|
      format.html { redirect_to estudiantes_url }
      format.json { head :no_content }
    end
  end
end
