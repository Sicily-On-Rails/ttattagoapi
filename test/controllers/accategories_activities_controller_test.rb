require "test_helper"

class AccategoriesActivitiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @accategories_activity = accategories_activities(:one)
  end

  test "should get index" do
    get accategories_activities_url, as: :json
    assert_response :success
  end

  test "should create accategories_activity" do
    assert_difference("AccategoriesActivity.count") do
      post accategories_activities_url, params: { accategories_activity: { accategory_id: @accategories_activity.accategory_id, activity_id: @accategories_activity.activity_id } }, as: :json
    end

    assert_response :created
  end

  test "should show accategories_activity" do
    get accategories_activity_url(@accategories_activity), as: :json
    assert_response :success
  end

  test "should update accategories_activity" do
    patch accategories_activity_url(@accategories_activity), params: { accategories_activity: { accategory_id: @accategories_activity.accategory_id, activity_id: @accategories_activity.activity_id } }, as: :json
    assert_response :success
  end

  test "should destroy accategories_activity" do
    assert_difference("AccategoriesActivity.count", -1) do
      delete accategories_activity_url(@accategories_activity), as: :json
    end

    assert_response :no_content
  end
end
