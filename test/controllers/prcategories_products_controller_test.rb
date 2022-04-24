require "test_helper"

class PrcategoriesProductsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @prcategories_product = prcategories_products(:one)
  end

  test "should get index" do
    get prcategories_products_url, as: :json
    assert_response :success
  end

  test "should create prcategories_product" do
    assert_difference("PrcategoriesProduct.count") do
      post prcategories_products_url, params: { prcategories_product: { prcategory_id: @prcategories_product.prcategory_id, product_id: @prcategories_product.product_id } }, as: :json
    end

    assert_response :created
  end

  test "should show prcategories_product" do
    get prcategories_product_url(@prcategories_product), as: :json
    assert_response :success
  end

  test "should update prcategories_product" do
    patch prcategories_product_url(@prcategories_product), params: { prcategories_product: { prcategory_id: @prcategories_product.prcategory_id, product_id: @prcategories_product.product_id } }, as: :json
    assert_response :success
  end

  test "should destroy prcategories_product" do
    assert_difference("PrcategoriesProduct.count", -1) do
      delete prcategories_product_url(@prcategories_product), as: :json
    end

    assert_response :no_content
  end
end
