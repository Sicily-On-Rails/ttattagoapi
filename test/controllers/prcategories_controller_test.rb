require "test_helper"

class PrcategoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @prcategory = prcategories(:one)
  end

  test "should get index" do
    get prcategories_url, as: :json
    assert_response :success
  end

  test "should create prcategory" do
    assert_difference("Prcategory.count") do
      post prcategories_url, params: { prcategory: { icon: @prcategory.icon, name: @prcategory.name } }, as: :json
    end

    assert_response :created
  end

  test "should show prcategory" do
    get prcategory_url(@prcategory), as: :json
    assert_response :success
  end

  test "should update prcategory" do
    patch prcategory_url(@prcategory), params: { prcategory: { icon: @prcategory.icon, name: @prcategory.name } }, as: :json
    assert_response :success
  end

  test "should destroy prcategory" do
    assert_difference("Prcategory.count", -1) do
      delete prcategory_url(@prcategory), as: :json
    end

    assert_response :no_content
  end
end
