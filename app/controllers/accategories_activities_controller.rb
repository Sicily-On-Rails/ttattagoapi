class AccategoriesActivitiesController < ApplicationController
  before_action :set_accategories_activity, only: %i[ show update destroy ]

  # GET /accategories_activities
  def index
    @accategories_activities = AccategoriesActivity.all

    render json: @accategories_activities
  end

  # GET /accategories_activities/1
  def show
    render json: @accategories_activity
  end

  # POST /accategories_activities
  def create
    @accategories_activity = AccategoriesActivity.new(accategories_activity_params)

    if @accategories_activity.save
      render json: @accategories_activity, status: :created, location: @accategories_activity
    else
      render json: @accategories_activity.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /accategories_activities/1
  def update
    if @accategories_activity.update(accategories_activity_params)
      render json: @accategories_activity
    else
      render json: @accategories_activity.errors, status: :unprocessable_entity
    end
  end

  # DELETE /accategories_activities/1
  def destroy
    @accategories_activity.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_accategories_activity
      @accategories_activity = AccategoriesActivity.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def accategories_activity_params
      params.require(:accategories_activity).permit(:accategory_id, :activity_id)
    end
end
