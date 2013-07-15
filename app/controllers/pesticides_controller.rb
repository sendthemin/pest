class PesticidesController < ApplicationController
  # GET /pesticides
  # GET /pesticides.json
  def index
    @pesticides = Pesticide.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @pesticides }
    end
  end

  # GET /pesticides/1
  # GET /pesticides/1.json
  def show
    @pesticide = Pesticide.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @pesticide }
    end
  end

  # GET /pesticides/new
  # GET /pesticides/new.json
  def new
    @pesticide = Pesticide.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @pesticide }
    end
  end

  # GET /pesticides/1/edit
  def edit
    @pesticide = Pesticide.find(params[:id])
  end

  # POST /pesticides
  # POST /pesticides.json
  def create
    @pesticide = Pesticide.new(params[:pesticide])

    respond_to do |format|
      if @pesticide.save
        format.html { redirect_to @pesticide, notice: 'Pesticide was successfully created.' }
        format.json { render json: @pesticide, status: :created, location: @pesticide }
      else
        format.html { render action: "new" }
        format.json { render json: @pesticide.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /pesticides/1
  # PUT /pesticides/1.json
  def update
    @pesticide = Pesticide.find(params[:id])

    respond_to do |format|
      if @pesticide.update_attributes(params[:pesticide])
        format.html { redirect_to @pesticide, notice: 'Pesticide was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @pesticide.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pesticides/1
  # DELETE /pesticides/1.json
  def destroy
    @pesticide = Pesticide.find(params[:id])
    @pesticide.destroy

    respond_to do |format|
      format.html { redirect_to pesticides_url }
      format.json { head :no_content }
    end
  end
end
