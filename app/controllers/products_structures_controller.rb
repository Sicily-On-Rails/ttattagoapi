class ProductsStructuresController < ApplicationController
  before_action :set_products_structure, only: %i[ show update destroy ]

  # GET /products_structures
  def index
    @products_structures = ProductsStructure.all

    render json: @products_structures
  end

  # GET /products_structures/1
  def show
    render json: @products_structure
  end

  # POST /products_structures
  def create
    @products_structure = ProductsStructure.new(products_structure_params)

    if @products_structure.save
      render json: @products_structure, status: :created, location: @products_structure
    else
      render json: @products_structure.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /products_structures/1
  def update
    if @products_structure.update(products_structure_params)
      render json: @products_structure
    else
      render json: @products_structure.errors, status: :unprocessable_entity
    end
  end

  # DELETE /products_structures/1
  def destroy
    @products_structure.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_products_structure
      @products_structure = ProductsStructure.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def products_structure_params
      params.require(:products_structure).permit(:structure_id, :product_id)
    end
end
