require "test_helper"

class AccategoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @accategory = accategories(:one)
  end

  test "should get index" do
    get accategories_url, as: :json
    assert_response :success
  end

  test "should create accategory" do
    assert_difference("Accategory.count") do
      post accategories_url, params: { accategory: { icon: @accategory.icon, name: @accategory.name } }, as: :json
    end

    assert_response :created
  end

  test "should show accategory" do
    get accategory_url(@accategory), as: :json
    assert_response :success
  end

  test "should update accategory" do
    patch accategory_url(@accategory), params: { accategory: { icon: @accategory.icon, name: @accategory.name } }, as: :json
    assert_response :success
  end

  test "should destroy accategory" do
    assert_difference("Accategory.count", -1) do
      delete accategory_url(@accategory), as: :json
    end

    assert_response :no_content
  end
end
