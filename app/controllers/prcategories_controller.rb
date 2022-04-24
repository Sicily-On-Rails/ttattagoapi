class PrcategoriesController < ApplicationController
  before_action :set_prcategory, only: %i[ show update destroy ]

  # GET /prcategories
  def index
    @prcategories = Prcategory.all

    render json: @prcategories
  end

  # GET /prcategories/1
  def show
    render json: @prcategory
  end

  # POST /prcategories
  def create
    @prcategory = Prcategory.new(prcategory_params)

    if @prcategory.save
      render json: @prcategory, status: :created, location: @prcategory
    else
      render json: @prcategory.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /prcategories/1
  def update
    if @prcategory.update(prcategory_params)
      render json: @prcategory
    else
      render json: @prcategory.errors, status: :unprocessable_entity
    end
  end

  # DELETE /prcategories/1
  def destroy
    @prcategory.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_prcategory
      @prcategory = Prcategory.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def prcategory_params
      params.require(:prcategory).permit(:name, :icon)
    end
end
