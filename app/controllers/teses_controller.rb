class TesesController < ApplicationController
  # GET /teses
  # GET /teses.json
  def index
    @teses = Tese.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @teses }
    end
  end

  # GET /teses/1
  # GET /teses/1.json
  def show
    @tese = Tese.find(params[:id])
    @profesor = Profesor.find(@tese.profesor_id)

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @tese }
    end
  end

  # GET /teses/new
  # GET /teses/new.json
  def new
    @tese = Tese.new
      
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @tese }
    end
  end

  # GET /teses/1/edit
  def edit
    @tese = Tese.find(params[:id])
  end

  # POST /teses
  # POST /teses.json
  def create
    @tese = Tese.new(params[:tese])
    @tese.profesor_id = params[:profesor_id]
    @tese.finalizado = false

    respond_to do |format|
      if @tese.save
        format.html { redirect_to @tese, notice: 'Tesis creada exitosamente' }
        format.json { render json: @tese, status: :created, location: @tese }
      else
        @profesor = Profesor.all
        format.html { render action: "new"}
        format.json { render json: @tese.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /teses/1
  # PUT /teses/1.json
  def update
    @tese = Tese.find(params[:id])

    respond_to do |format|
      if @tese.update_attributes(params[:tese])
        format.html { redirect_to @tese, notice: 'Tesis actualizada exitosamente' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @tese.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /teses/1
  # DELETE /teses/1.json
  def destroy
    @tese = Tese.find(params[:id])
    @tese.destroy

    respond_to do |format|
      format.html { redirect_to teses_url, notice: 'Tesis eliminada exitosamente' }
      format.json { head :no_content }
    end
  end

   def delete
    @tese = Tese.find(params[:id])
    @tese.destroy

    respond_to do |format|
      format.html { redirect_to teses_url }
      format.json { head :no_content }
    end
  end
end
