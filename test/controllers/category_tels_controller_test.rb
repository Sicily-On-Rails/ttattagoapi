require "test_helper"

class CategoryTelsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @category_tel = category_tels(:one)
  end

  test "should get index" do
    get category_tels_url, as: :json
    assert_response :success
  end

  test "should create category_tel" do
    assert_difference("CategoryTel.count") do
      post category_tels_url, params: { category_tel: { name: @category_tel.name } }, as: :json
    end

    assert_response :created
  end

  test "should show category_tel" do
    get category_tel_url(@category_tel), as: :json
    assert_response :success
  end

  test "should update category_tel" do
    patch category_tel_url(@category_tel), params: { category_tel: { name: @category_tel.name } }, as: :json
    assert_response :success
  end

  test "should destroy category_tel" do
    assert_difference("CategoryTel.count", -1) do
      delete category_tel_url(@category_tel), as: :json
    end

    assert_response :no_content
  end
end
