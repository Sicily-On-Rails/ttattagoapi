require "test_helper"

class PlacesProductsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @places_product = places_products(:one)
  end

  test "should get index" do
    get places_products_url, as: :json
    assert_response :success
  end

  test "should create places_product" do
    assert_difference("PlacesProduct.count") do
      post places_products_url, params: { places_product: { place_id: @places_product.place_id, product_id: @places_product.product_id } }, as: :json
    end

    assert_response :created
  end

  test "should show places_product" do
    get places_product_url(@places_product), as: :json
    assert_response :success
  end

  test "should update places_product" do
    patch places_product_url(@places_product), params: { places_product: { place_id: @places_product.place_id, product_id: @places_product.product_id } }, as: :json
    assert_response :success
  end

  test "should destroy places_product" do
    assert_difference("PlacesProduct.count", -1) do
      delete places_product_url(@places_product), as: :json
    end

    assert_response :no_content
  end
end
