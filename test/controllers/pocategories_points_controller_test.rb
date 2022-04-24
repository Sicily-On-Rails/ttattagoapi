require "test_helper"

class PocategoriesPointsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pocategories_point = pocategories_points(:one)
  end

  test "should get index" do
    get pocategories_points_url, as: :json
    assert_response :success
  end

  test "should create pocategories_point" do
    assert_difference("PocategoriesPoint.count") do
      post pocategories_points_url, params: { pocategories_point: { pocategory_id: @pocategories_point.pocategory_id, point_id: @pocategories_point.point_id } }, as: :json
    end

    assert_response :created
  end

  test "should show pocategories_point" do
    get pocategories_point_url(@pocategories_point), as: :json
    assert_response :success
  end

  test "should update pocategories_point" do
    patch pocategories_point_url(@pocategories_point), params: { pocategories_point: { pocategory_id: @pocategories_point.pocategory_id, point_id: @pocategories_point.point_id } }, as: :json
    assert_response :success
  end

  test "should destroy pocategories_point" do
    assert_difference("PocategoriesPoint.count", -1) do
      delete pocategories_point_url(@pocategories_point), as: :json
    end

    assert_response :no_content
  end
end
