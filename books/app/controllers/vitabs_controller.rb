class VitabsController < ApplicationController
  before_action :set_vitab, only: [:show, :edit, :update, :destroy]

  # GET /vitabs
  # GET /vitabs.json
  def index
    @vitabs = Vitab.all
  end

  # GET /vitabs/1
  # GET /vitabs/1.json
  def show
  end

  # GET /vitabs/new
  def new
    @vitab = Vitab.new
  end

  # GET /vitabs/1/edit
  def edit
  end

  # POST /vitabs
  # POST /vitabs.json
  def create
    @vitab = Vitab.new(vitab_params)

    respond_to do |format|
      if @vitab.save
        format.html { redirect_to @vitab, notice: 'Vitab was successfully created.' }
        format.json { render action: 'show', status: :created, location: @vitab }
      else
        format.html { render action: 'new' }
        format.json { render json: @vitab.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vitabs/1
  # PATCH/PUT /vitabs/1.json
  def update
    respond_to do |format|
      if @vitab.update(vitab_params)
        format.html { redirect_to @vitab, notice: 'Vitab was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @vitab.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vitabs/1
  # DELETE /vitabs/1.json
  def destroy
    @vitab.destroy
    respond_to do |format|
      format.html { redirect_to vitabs_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vitab
      @vitab = Vitab.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def vitab_params
      params.require(:vitab).permit(:Name, :, :title, :, :dateborrowed, :)
    end
end
