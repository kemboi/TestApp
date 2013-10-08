class VitabusController < ApplicationController
  before_action :set_vitabus, only: [:show, :edit, :update, :destroy]

  # GET /vitabus
  # GET /vitabus.json
  def index
    @vitabus = Vitabu.all
  end

  # GET /vitabus/1
  # GET /vitabus/1.json
  def show
  end

  # GET /vitabus/new
  def new
    @vitabus = Vitabu.new
  end

  # GET /vitabus/1/edit
  def edit
  end

  # POST /vitabus
  # POST /vitabus.json
  def create
    @vitabus = Vitabu.new(vitabus_params)

    respond_to do |format|
      if @vitabus.save
        format.html { redirect_to @vitabus, notice: 'Vitabu was successfully created.' }
        format.json { render action: 'show', status: :created, location: @vitabus }
      else
        format.html { render action: 'new' }
        format.json { render json: @vitabus.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vitabus/1
  # PATCH/PUT /vitabus/1.json
  def update
    respond_to do |format|
      if @vitabus.update(vitabus_params)
        format.html { redirect_to @vitabus, notice: 'Vitabu was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @vitabus.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vitabus/1
  # DELETE /vitabus/1.json
  def destroy
    @vitabus.destroy
    respond_to do |format|
      format.html { redirect_to vitabus_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vitabus
      @vitabus = Vitabu.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def vitabus_params
      params.require(:vitabus).permit(:Name, :title, :dateborrowed)
    end
end
