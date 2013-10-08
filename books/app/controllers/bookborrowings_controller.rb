class BookborrowingsController < ApplicationController
  before_action :set_bookborrowing, only: [:show, :edit, :update, :destroy]

  # GET /bookborrowings
  # GET /bookborrowings.json
  def index
    @bookborrowings = Bookborrowing.all
  end

  # GET /bookborrowings/1
  # GET /bookborrowings/1.json
  def show
  end

  # GET /bookborrowings/new
  def new
    @bookborrowing = Bookborrowing.new
  end

  # GET /bookborrowings/1/edit
  def edit
  end

  # POST /bookborrowings
  # POST /bookborrowings.json
  def create
    @bookborrowing = Bookborrowing.new(bookborrowing_params)

    respond_to do |format|
      if @bookborrowing.save
        format.html { redirect_to @bookborrowing, notice: 'Bookborrowing was successfully created.' }
        format.json { render action: 'show', status: :created, location: @bookborrowing }
      else
        format.html { render action: 'new' }
        format.json { render json: @bookborrowing.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bookborrowings/1
  # PATCH/PUT /bookborrowings/1.json
  def update
    respond_to do |format|
      if @bookborrowing.update(bookborrowing_params)
        format.html { redirect_to @bookborrowing, notice: 'Bookborrowing was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @bookborrowing.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bookborrowings/1
  # DELETE /bookborrowings/1.json
  def destroy
    @bookborrowing.destroy
    respond_to do |format|
      format.html { redirect_to bookborrowings_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bookborrowing
      @bookborrowing = Bookborrowing.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bookborrowing_params
      params.require(:bookborrowing).permit(:name, :, :title, :, :author, :, :date_publish, :)
    end
end
