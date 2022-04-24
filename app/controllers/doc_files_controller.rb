class DocFilesController < ApplicationController
  before_action :set_doc_file, only: %i[ show update destroy ]

  # GET /doc_files
  def index
    @doc_files = DocFile.all

    render json: @doc_files
  end

  # GET /doc_files/1
  def show
    render json: @doc_file
  end

  # POST /doc_files
  def create
    @doc_file = DocFile.new(doc_file_params)

    if @doc_file.save
      render json: @doc_file, status: :created, location: @doc_file
    else
      render json: @doc_file.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /doc_files/1
  def update
    if @doc_file.update(doc_file_params)
      render json: @doc_file
    else
      render json: @doc_file.errors, status: :unprocessable_entity
    end
  end

  # DELETE /doc_files/1
  def destroy
    @doc_file.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_doc_file
      @doc_file = DocFile.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def doc_file_params
      params.require(:doc_file).permit(:file, :document_id)
    end
end
