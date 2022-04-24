class PocategoriesPointsController < ApplicationController
  before_action :set_pocategories_point, only: %i[ show update destroy ]

  # GET /pocategories_points
  def index
    @pocategories_points = PocategoriesPoint.all

    render json: @pocategories_points
  end

  # GET /pocategories_points/1
  def show
    render json: @pocategories_point
  end

  # POST /pocategories_points
  def create
    @pocategories_point = PocategoriesPoint.new(pocategories_point_params)

    if @pocategories_point.save
      render json: @pocategories_point, status: :created, location: @pocategories_point
    else
      render json: @pocategories_point.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /pocategories_points/1
  def update
    if @pocategories_point.update(pocategories_point_params)
      render json: @pocategories_point
    else
      render json: @pocategories_point.errors, status: :unprocessable_entity
    end
  end

  # DELETE /pocategories_points/1
  def destroy
    @pocategories_point.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pocategories_point
      @pocategories_point = PocategoriesPoint.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def pocategories_point_params
      params.require(:pocategories_point).permit(:pocategory_id, :point_id)
    end
end
