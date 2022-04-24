class PocategoryTranslationsController < ApplicationController
  before_action :set_pocategory_translation, only: %i[ show update destroy ]

  # GET /pocategory_translations
  def index
    @pocategory_translations = PocategoryTranslation.all

    render json: @pocategory_translations
  end

  # GET /pocategory_translations/1
  def show
    render json: @pocategory_translation
  end

  # POST /pocategory_translations
  def create
    @pocategory_translation = PocategoryTranslation.new(pocategory_translation_params)

    if @pocategory_translation.save
      render json: @pocategory_translation, status: :created, location: @pocategory_translation
    else
      render json: @pocategory_translation.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /pocategory_translations/1
  def update
    if @pocategory_translation.update(pocategory_translation_params)
      render json: @pocategory_translation
    else
      render json: @pocategory_translation.errors, status: :unprocessable_entity
    end
  end

  # DELETE /pocategory_translations/1
  def destroy
    @pocategory_translation.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pocategory_translation
      @pocategory_translation = PocategoryTranslation.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def pocategory_translation_params
      params.require(:pocategory_translation).permit(:pocategory_id, :locale, :name)
    end
end
