class PrcategoriesProductsController < ApplicationController
  before_action :set_prcategories_product, only: %i[ show update destroy ]

  # GET /prcategories_products
  def index
    @prcategories_products = PrcategoriesProduct.all

    render json: @prcategories_products
  end

  # GET /prcategories_products/1
  def show
    render json: @prcategories_product
  end

  # POST /prcategories_products
  def create
    @prcategories_product = PrcategoriesProduct.new(prcategories_product_params)

    if @prcategories_product.save
      render json: @prcategories_product, status: :created, location: @prcategories_product
    else
      render json: @prcategories_product.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /prcategories_products/1
  def update
    if @prcategories_product.update(prcategories_product_params)
      render json: @prcategories_product
    else
      render json: @prcategories_product.errors, status: :unprocessable_entity
    end
  end

  # DELETE /prcategories_products/1
  def destroy
    @prcategories_product.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_prcategories_product
      @prcategories_product = PrcategoriesProduct.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def prcategories_product_params
      params.require(:prcategories_product).permit(:prcategory_id, :product_id)
    end
end
