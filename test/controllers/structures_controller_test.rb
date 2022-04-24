require "test_helper"

class StructuresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @structure = structures(:one)
  end

  test "should get index" do
    get structures_url, as: :json
    assert_response :success
  end

  test "should create structure" do
    assert_difference("Structure.count") do
      post structures_url, params: { structure: { city: @structure.city, country: @structure.country, description: @structure.description, latitude: @structure.latitude, longitude: @structure.longitude, name: @structure.name, province: @structure.province, street: @structure.street, street_number: @structure.street_number, zipcode: @structure.zipcode } }, as: :json
    end

    assert_response :created
  end

  test "should show structure" do
    get structure_url(@structure), as: :json
    assert_response :success
  end

  test "should update structure" do
    patch structure_url(@structure), params: { structure: { city: @structure.city, country: @structure.country, description: @structure.description, latitude: @structure.latitude, longitude: @structure.longitude, name: @structure.name, province: @structure.province, street: @structure.street, street_number: @structure.street_number, zipcode: @structure.zipcode } }, as: :json
    assert_response :success
  end

  test "should destroy structure" do
    assert_difference("Structure.count", -1) do
      delete structure_url(@structure), as: :json
    end

    assert_response :no_content
  end
end
