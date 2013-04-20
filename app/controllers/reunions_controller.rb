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

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @reunion }
    end
  end

  # GET /reunions/new
  # GET /reunions/new.json
  def new
    @reunion = Reunion.new

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

    respond_to do |format|
      if @reunion.save
        format.html { redirect_to @reunion, notice: 'Reunion was successfully created.' }
        format.json { render json: @reunion, status: :created, location: @reunion }
      else
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
        format.html { redirect_to @reunion, notice: 'Reunion was successfully updated.' }
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
    @reunion.destroy

    respond_to do |format|
      format.html { redirect_to reunions_url }
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
