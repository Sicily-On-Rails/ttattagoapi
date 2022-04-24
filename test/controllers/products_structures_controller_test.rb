require "test_helper"

class ProductsStructuresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @products_structure = products_structures(:one)
  end

  test "should get index" do
    get products_structures_url, as: :json
    assert_response :success
  end

  test "should create products_structure" do
    assert_difference("ProductsStructure.count") do
      post products_structures_url, params: { products_structure: { product_id: @products_structure.product_id, structure_id: @products_structure.structure_id } }, as: :json
    end

    assert_response :created
  end

  test "should show products_structure" do
    get products_structure_url(@products_structure), as: :json
    assert_response :success
  end

  test "should update products_structure" do
    patch products_structure_url(@products_structure), params: { products_structure: { product_id: @products_structure.product_id, structure_id: @products_structure.structure_id } }, as: :json
    assert_response :success
  end

  test "should destroy products_structure" do
    assert_difference("ProductsStructure.count", -1) do
      delete products_structure_url(@products_structure), as: :json
    end

    assert_response :no_content
  end
end
