class PlacesProductsController < ApplicationController
  before_action :set_places_product, only: %i[ show update destroy ]

  # GET /places_products
  def index
    @places_products = PlacesProduct.all

    render json: @places_products
  end

  # GET /places_products/1
  def show
    render json: @places_product
  end

  # POST /places_products
  def create
    @places_product = PlacesProduct.new(places_product_params)

    if @places_product.save
      render json: @places_product, status: :created, location: @places_product
    else
      render json: @places_product.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /places_products/1
  def update
    if @places_product.update(places_product_params)
      render json: @places_product
    else
      render json: @places_product.errors, status: :unprocessable_entity
    end
  end

  # DELETE /places_products/1
  def destroy
    @places_product.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_places_product
      @places_product = PlacesProduct.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def places_product_params
      params.require(:places_product).permit(:product_id, :place_id)
    end
end
