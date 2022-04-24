require "test_helper"

class CategoryTelsTelephonesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @category_tels_telephone = category_tels_telephones(:one)
  end

  test "should get index" do
    get category_tels_telephones_url, as: :json
    assert_response :success
  end

  test "should create category_tels_telephone" do
    assert_difference("CategoryTelsTelephone.count") do
      post category_tels_telephones_url, params: { category_tels_telephone: { category_tel_id: @category_tels_telephone.category_tel_id, telephone_id: @category_tels_telephone.telephone_id } }, as: :json
    end

    assert_response :created
  end

  test "should show category_tels_telephone" do
    get category_tels_telephone_url(@category_tels_telephone), as: :json
    assert_response :success
  end

  test "should update category_tels_telephone" do
    patch category_tels_telephone_url(@category_tels_telephone), params: { category_tels_telephone: { category_tel_id: @category_tels_telephone.category_tel_id, telephone_id: @category_tels_telephone.telephone_id } }, as: :json
    assert_response :success
  end

  test "should destroy category_tels_telephone" do
    assert_difference("CategoryTelsTelephone.count", -1) do
      delete category_tels_telephone_url(@category_tels_telephone), as: :json
    end

    assert_response :no_content
  end
end
