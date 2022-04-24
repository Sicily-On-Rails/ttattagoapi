require "test_helper"

class PocategoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pocategory = pocategories(:one)
  end

  test "should get index" do
    get pocategories_url, as: :json
    assert_response :success
  end

  test "should create pocategory" do
    assert_difference("Pocategory.count") do
      post pocategories_url, params: { pocategory: { icon: @pocategory.icon, name: @pocategory.name } }, as: :json
    end

    assert_response :created
  end

  test "should show pocategory" do
    get pocategory_url(@pocategory), as: :json
    assert_response :success
  end

  test "should update pocategory" do
    patch pocategory_url(@pocategory), params: { pocategory: { icon: @pocategory.icon, name: @pocategory.name } }, as: :json
    assert_response :success
  end

  test "should destroy pocategory" do
    assert_difference("Pocategory.count", -1) do
      delete pocategory_url(@pocategory), as: :json
    end

    assert_response :no_content
  end
end
