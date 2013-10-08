class KemboisController < ApplicationController
  before_action :set_kemboi, only: [:show, :edit, :update, :destroy]

  # GET /kembois
  # GET /kembois.json
  def index
    @kembois = Kemboi.all
  end

  # GET /kembois/1
  # GET /kembois/1.json
  def show
  end

  # GET /kembois/new
  def new
    @kemboi = Kemboi.new
  end

  # GET /kembois/1/edit
  def edit
  end

  # POST /kembois
  # POST /kembois.json
  def create
    @kemboi = Kemboi.new(kemboi_params)

    respond_to do |format|
      if @kemboi.save
        format.html { redirect_to @kemboi, notice: 'Kemboi was successfully created.' }
        format.json { render action: 'show', status: :created, location: @kemboi }
      else
        format.html { render action: 'new' }
        format.json { render json: @kemboi.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /kembois/1
  # PATCH/PUT /kembois/1.json
  def update
    respond_to do |format|
      if @kemboi.update(kemboi_params)
        format.html { redirect_to @kemboi, notice: 'Kemboi was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @kemboi.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /kembois/1
  # DELETE /kembois/1.json
  def destroy
    @kemboi.destroy
    respond_to do |format|
      format.html { redirect_to kembois_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_kemboi
      @kemboi = Kemboi.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def kemboi_params
      params.require(:kemboi).permit(:name, :address)
    end
end
