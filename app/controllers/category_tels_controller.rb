class CategoryTelsController < ApplicationController
  before_action :set_category_tel, only: %i[ show update destroy ]

  # GET /category_tels
  def index
    @category_tels = CategoryTel.all

    render json: @category_tels
  end

  # GET /category_tels/1
  def show
    render json: @category_tel
  end

  # POST /category_tels
  def create
    @category_tel = CategoryTel.new(category_tel_params)

    if @category_tel.save
      render json: @category_tel, status: :created, location: @category_tel
    else
      render json: @category_tel.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /category_tels/1
  def update
    if @category_tel.update(category_tel_params)
      render json: @category_tel
    else
      render json: @category_tel.errors, status: :unprocessable_entity
    end
  end

  # DELETE /category_tels/1
  def destroy
    @category_tel.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_category_tel
      @category_tel = CategoryTel.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def category_tel_params
      params.require(:category_tel).permit(:name)
    end
end
