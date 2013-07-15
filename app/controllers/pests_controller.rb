class PestsController < ApplicationController
  # GET /pests
  # GET /pests.json
  def index
    @pests = Pest.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @pests }
    end
  end

  # GET /pests/1
  # GET /pests/1.json
  def show
    @pest = Pest.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @pest }
    end
  end

  # GET /pests/new
  # GET /pests/new.json
  def new
    @pest = Pest.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @pest }
    end
  end

  # GET /pests/1/edit
  def edit
    @pest = Pest.find(params[:id])
  end

  # POST /pests
  # POST /pests.json
  def create
    @pest = Pest.new(params[:pest])

    respond_to do |format|
      if @pest.save
        format.html { redirect_to @pest, notice: 'Pest was successfully created.' }
        format.json { render json: @pest, status: :created, location: @pest }
      else
        format.html { render action: "new" }
        format.json { render json: @pest.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /pests/1
  # PUT /pests/1.json
  def update
    @pest = Pest.find(params[:id])

    respond_to do |format|
      if @pest.update_attributes(params[:pest])
        format.html { redirect_to @pest, notice: 'Pest was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @pest.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pests/1
  # DELETE /pests/1.json
  def destroy
    @pest = Pest.find(params[:id])
    @pest.destroy

    respond_to do |format|
      format.html { redirect_to pests_url }
      format.json { head :no_content }
    end
  end
end
