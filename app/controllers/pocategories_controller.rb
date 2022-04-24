class PocategoriesController < ApplicationController
  before_action :set_pocategory, only: %i[ show update destroy ]

  # GET /pocategories
  def index
    @pocategories = Pocategory.all

    render json: @pocategories
  end

  # GET /pocategories/1
  def show
    render json: @pocategory
  end

  # POST /pocategories
  def create
    @pocategory = Pocategory.new(pocategory_params)

    if @pocategory.save
      render json: @pocategory, status: :created, location: @pocategory
    else
      render json: @pocategory.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /pocategories/1
  def update
    if @pocategory.update(pocategory_params)
      render json: @pocategory
    else
      render json: @pocategory.errors, status: :unprocessable_entity
    end
  end

  # DELETE /pocategories/1
  def destroy
    @pocategory.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pocategory
      @pocategory = Pocategory.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def pocategory_params
      params.require(:pocategory).permit(:name, :icon)
    end
end
