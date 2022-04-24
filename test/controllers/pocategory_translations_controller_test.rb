require "test_helper"

class PocategoryTranslationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pocategory_translation = pocategory_translations(:one)
  end

  test "should get index" do
    get pocategory_translations_url, as: :json
    assert_response :success
  end

  test "should create pocategory_translation" do
    assert_difference("PocategoryTranslation.count") do
      post pocategory_translations_url, params: { pocategory_translation: { locale: @pocategory_translation.locale, name: @pocategory_translation.name, pocategory_id: @pocategory_translation.pocategory_id } }, as: :json
    end

    assert_response :created
  end

  test "should show pocategory_translation" do
    get pocategory_translation_url(@pocategory_translation), as: :json
    assert_response :success
  end

  test "should update pocategory_translation" do
    patch pocategory_translation_url(@pocategory_translation), params: { pocategory_translation: { locale: @pocategory_translation.locale, name: @pocategory_translation.name, pocategory_id: @pocategory_translation.pocategory_id } }, as: :json
    assert_response :success
  end

  test "should destroy pocategory_translation" do
    assert_difference("PocategoryTranslation.count", -1) do
      delete pocategory_translation_url(@pocategory_translation), as: :json
    end

    assert_response :no_content
  end
end
