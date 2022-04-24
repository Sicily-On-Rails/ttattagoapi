class FriendlyIdSlugsController < ApplicationController
  before_action :set_friendly_id_slug, only: %i[ show update destroy ]

  # GET /friendly_id_slugs
  def index
    @friendly_id_slugs = FriendlyIdSlug.all

    render json: @friendly_id_slugs
  end

  # GET /friendly_id_slugs/1
  def show
    render json: @friendly_id_slug
  end

  # POST /friendly_id_slugs
  def create
    @friendly_id_slug = FriendlyIdSlug.new(friendly_id_slug_params)

    if @friendly_id_slug.save
      render json: @friendly_id_slug, status: :created, location: @friendly_id_slug
    else
      render json: @friendly_id_slug.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /friendly_id_slugs/1
  def update
    if @friendly_id_slug.update(friendly_id_slug_params)
      render json: @friendly_id_slug
    else
      render json: @friendly_id_slug.errors, status: :unprocessable_entity
    end
  end

  # DELETE /friendly_id_slugs/1
  def destroy
    @friendly_id_slug.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_friendly_id_slug
      @friendly_id_slug = FriendlyIdSlug.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def friendly_id_slug_params
      params.require(:friendly_id_slug).permit(:slug, :sluggable_id, :sluggable_type, :scope, :locale)
    end
end
