require "test_helper"

class PointTranslationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @point_translation = point_translations(:one)
  end

  test "should get index" do
    get point_translations_url, as: :json
    assert_response :success
  end

  test "should create point_translation" do
    assert_difference("PointTranslation.count") do
      post point_translations_url, params: { point_translation: { description: @point_translation.description, locale: @point_translation.locale, name: @point_translation.name, point_id: @point_translation.point_id, short_description: @point_translation.short_description, slug: @point_translation.slug } }, as: :json
    end

    assert_response :created
  end

  test "should show point_translation" do
    get point_translation_url(@point_translation), as: :json
    assert_response :success
  end

  test "should update point_translation" do
    patch point_translation_url(@point_translation), params: { point_translation: { description: @point_translation.description, locale: @point_translation.locale, name: @point_translation.name, point_id: @point_translation.point_id, short_description: @point_translation.short_description, slug: @point_translation.slug } }, as: :json
    assert_response :success
  end

  test "should destroy point_translation" do
    assert_difference("PointTranslation.count", -1) do
      delete point_translation_url(@point_translation), as: :json
    end

    assert_response :no_content
  end
end
