require "test_helper"

class PointsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @point = points(:one)
  end

  test "should get index" do
    get points_url, as: :json
    assert_response :success
  end

  test "should create point" do
    assert_difference("Point.count") do
      post points_url, params: { point: { city: @point.city, copyright: @point.copyright, country: @point.country, description: @point.description, latitude: @point.latitude, longitude: @point.longitude, name: @point.name, place_id: @point.place_id, province: @point.province, short_description: @point.short_description, slug: @point.slug, street: @point.street, street_number: @point.street_number, zipcode: @point.zipcode } }, as: :json
    end

    assert_response :created
  end

  test "should show point" do
    get point_url(@point), as: :json
    assert_response :success
  end

  test "should update point" do
    patch point_url(@point), params: { point: { city: @point.city, copyright: @point.copyright, country: @point.country, description: @point.description, latitude: @point.latitude, longitude: @point.longitude, name: @point.name, place_id: @point.place_id, province: @point.province, short_description: @point.short_description, slug: @point.slug, street: @point.street, street_number: @point.street_number, zipcode: @point.zipcode } }, as: :json
    assert_response :success
  end

  test "should destroy point" do
    assert_difference("Point.count", -1) do
      delete point_url(@point), as: :json
    end

    assert_response :no_content
  end
end
