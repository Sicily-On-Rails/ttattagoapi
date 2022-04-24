require "test_helper"

class ActivitiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @activity = activities(:one)
  end

  test "should get index" do
    get activities_url, as: :json
    assert_response :success
  end

  test "should create activity" do
    assert_difference("Activity.count") do
      post activities_url, params: { activity: { city: @activity.city, country: @activity.country, description: @activity.description, end_date: @activity.end_date, latitude: @activity.latitude, longitude: @activity.longitude, name: @activity.name, place_id: @activity.place_id, province: @activity.province, short_description: @activity.short_description, slug: @activity.slug, start_date: @activity.start_date, street: @activity.street, street_number: @activity.street_number, zipcode: @activity.zipcode } }, as: :json
    end

    assert_response :created
  end

  test "should show activity" do
    get activity_url(@activity), as: :json
    assert_response :success
  end

  test "should update activity" do
    patch activity_url(@activity), params: { activity: { city: @activity.city, country: @activity.country, description: @activity.description, end_date: @activity.end_date, latitude: @activity.latitude, longitude: @activity.longitude, name: @activity.name, place_id: @activity.place_id, province: @activity.province, short_description: @activity.short_description, slug: @activity.slug, start_date: @activity.start_date, street: @activity.street, street_number: @activity.street_number, zipcode: @activity.zipcode } }, as: :json
    assert_response :success
  end

  test "should destroy activity" do
    assert_difference("Activity.count", -1) do
      delete activity_url(@activity), as: :json
    end

    assert_response :no_content
  end
end
