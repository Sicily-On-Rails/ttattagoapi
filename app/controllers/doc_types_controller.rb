class DocTypesController < ApplicationController
  before_action :set_doc_type, only: %i[ show update destroy ]

  # GET /doc_types
  def index
    @doc_types = DocType.all

    render json: @doc_types
  end

  # GET /doc_types/1
  def show
    render json: @doc_type
  end

  # POST /doc_types
  def create
    @doc_type = DocType.new(doc_type_params)

    if @doc_type.save
      render json: @doc_type, status: :created, location: @doc_type
    else
      render json: @doc_type.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /doc_types/1
  def update
    if @doc_type.update(doc_type_params)
      render json: @doc_type
    else
      render json: @doc_type.errors, status: :unprocessable_entity
    end
  end

  # DELETE /doc_types/1
  def destroy
    @doc_type.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_doc_type
      @doc_type = DocType.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def doc_type_params
      params.require(:doc_type).permit(:name)
    end
end
