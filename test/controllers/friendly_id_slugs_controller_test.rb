require "test_helper"

class FriendlyIdSlugsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @friendly_id_slug = friendly_id_slugs(:one)
  end

  test "should get index" do
    get friendly_id_slugs_url, as: :json
    assert_response :success
  end

  test "should create friendly_id_slug" do
    assert_difference("FriendlyIdSlug.count") do
      post friendly_id_slugs_url, params: { friendly_id_slug: { locale: @friendly_id_slug.locale, scope: @friendly_id_slug.scope, slug: @friendly_id_slug.slug, sluggable_id: @friendly_id_slug.sluggable_id, sluggable_type: @friendly_id_slug.sluggable_type } }, as: :json
    end

    assert_response :created
  end

  test "should show friendly_id_slug" do
    get friendly_id_slug_url(@friendly_id_slug), as: :json
    assert_response :success
  end

  test "should update friendly_id_slug" do
    patch friendly_id_slug_url(@friendly_id_slug), params: { friendly_id_slug: { locale: @friendly_id_slug.locale, scope: @friendly_id_slug.scope, slug: @friendly_id_slug.slug, sluggable_id: @friendly_id_slug.sluggable_id, sluggable_type: @friendly_id_slug.sluggable_type } }, as: :json
    assert_response :success
  end

  test "should destroy friendly_id_slug" do
    assert_difference("FriendlyIdSlug.count", -1) do
      delete friendly_id_slug_url(@friendly_id_slug), as: :json
    end

    assert_response :no_content
  end
end
