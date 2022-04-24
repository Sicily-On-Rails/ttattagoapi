class CategoryTelsTelephonesController < ApplicationController
  before_action :set_category_tels_telephone, only: %i[ show update destroy ]

  # GET /category_tels_telephones
  def index
    @category_tels_telephones = CategoryTelsTelephone.all

    render json: @category_tels_telephones
  end

  # GET /category_tels_telephones/1
  def show
    render json: @category_tels_telephone
  end

  # POST /category_tels_telephones
  def create
    @category_tels_telephone = CategoryTelsTelephone.new(category_tels_telephone_params)

    if @category_tels_telephone.save
      render json: @category_tels_telephone, status: :created, location: @category_tels_telephone
    else
      render json: @category_tels_telephone.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /category_tels_telephones/1
  def update
    if @category_tels_telephone.update(category_tels_telephone_params)
      render json: @category_tels_telephone
    else
      render json: @category_tels_telephone.errors, status: :unprocessable_entity
    end
  end

  # DELETE /category_tels_telephones/1
  def destroy
    @category_tels_telephone.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_category_tels_telephone
      @category_tels_telephone = CategoryTelsTelephone.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def category_tels_telephone_params
      params.require(:category_tels_telephone).permit(:telephone_id, :category_tel_id)
    end
end
