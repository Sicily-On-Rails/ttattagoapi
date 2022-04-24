class PointTranslationsController < ApplicationController
  before_action :set_point_translation, only: %i[ show update destroy ]

  # GET /point_translations
  def index
    @point_translations = PointTranslation.all

    render json: @point_translations
  end

  # GET /point_translations/1
  def show
    render json: @point_translation
  end

  # POST /point_translations
  def create
    @point_translation = PointTranslation.new(point_translation_params)

    if @point_translation.save
      render json: @point_translation, status: :created, location: @point_translation
    else
      render json: @point_translation.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /point_translations/1
  def update
    if @point_translation.update(point_translation_params)
      render json: @point_translation
    else
      render json: @point_translation.errors, status: :unprocessable_entity
    end
  end

  # DELETE /point_translations/1
  def destroy
    @point_translation.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_point_translation
      @point_translation = PointTranslation.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def point_translation_params
      params.require(:point_translation).permit(:point_id, :locale, :name, :description, :short_description, :slug)
    end
end
