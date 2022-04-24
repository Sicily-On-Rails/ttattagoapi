class AccategoriesController < ApplicationController
  before_action :set_accategory, only: %i[ show update destroy ]

  # GET /accategories
  def index
    @accategories = Accategory.all

    render json: @accategories
  end

  # GET /accategories/1
  def show
    render json: @accategory
  end

  # POST /accategories
  def create
    @accategory = Accategory.new(accategory_params)

    if @accategory.save
      render json: @accategory, status: :created, location: @accategory
    else
      render json: @accategory.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /accategories/1
  def update
    if @accategory.update(accategory_params)
      render json: @accategory
    else
      render json: @accategory.errors, status: :unprocessable_entity
    end
  end

  # DELETE /accategories/1
  def destroy
    @accategory.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_accategory
      @accategory = Accategory.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def accategory_params
      params.require(:accategory).permit(:name, :icon)
    end
end
