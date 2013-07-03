class PedalsController < ApplicationController
  # GET /pedals
  # GET /pedals.json
  def index
    @pedals = Pedal.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @pedals }
    end
  end

  # GET /pedals/1
  # GET /pedals/1.json
  def show
    @pedal = Pedal.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @pedal }
    end
  end

  # GET /pedals/new
  # GET /pedals/new.json
  def new
    @pedal = Pedal.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @pedal }
    end
  end

  # GET /pedals/1/edit
  def edit
    @pedal = Pedal.find(params[:id])
  end

  # POST /pedals
  # POST /pedals.json
  def create
    @pedal = Pedal.new(params[:pedal])

    respond_to do |format|
      if @pedal.save
        format.html { redirect_to @pedal, notice: 'Pedal was successfully created.' }
        format.json { render json: @pedal, status: :created, location: @pedal }
      else
        format.html { render action: "new" }
        format.json { render json: @pedal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /pedals/1
  # PUT /pedals/1.json
  def update
    @pedal = Pedal.find(params[:id])

    respond_to do |format|
      if @pedal.update_attributes(params[:pedal])
        format.html { redirect_to @pedal, notice: 'Pedal was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @pedal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pedals/1
  # DELETE /pedals/1.json
  def destroy
    @pedal = Pedal.find(params[:id])
    @pedal.destroy

    respond_to do |format|
      format.html { redirect_to pedals_url }
      format.json { head :no_content }
    end
  end
end
