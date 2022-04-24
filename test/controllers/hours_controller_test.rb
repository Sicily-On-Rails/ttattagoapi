require "test_helper"

class HoursControllerTest < ActionDispatch::IntegrationTest
  setup do
    @hour = hours(:one)
  end

  test "should get index" do
    get hours_url, as: :json
    assert_response :success
  end

  test "should create hour" do
    assert_difference("Hour.count") do
      post hours_url, params: { hour: { closing_time: @hour.closing_time, company_id: @hour.company_id, day: @hour.day, opening_time: @hour.opening_time } }, as: :json
    end

    assert_response :created
  end

  test "should show hour" do
    get hour_url(@hour), as: :json
    assert_response :success
  end

  test "should update hour" do
    patch hour_url(@hour), params: { hour: { closing_time: @hour.closing_time, company_id: @hour.company_id, day: @hour.day, opening_time: @hour.opening_time } }, as: :json
    assert_response :success
  end

  test "should destroy hour" do
    assert_difference("Hour.count", -1) do
      delete hour_url(@hour), as: :json
    end

    assert_response :no_content
  end
end
