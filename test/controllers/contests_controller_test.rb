require "test_helper"

class ContestsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @contest = contests(:one)
  end

  test "should get index" do
    get contests_url, as: :json
    assert_response :success
  end

  test "should create contest" do
    assert_difference("Contest.count") do
      post contests_url, params: { contest: { city: @contest.city, email: @contest.email, name: @contest.name, surname: @contest.surname, telephone: @contest.telephone } }, as: :json
    end

    assert_response :created
  end

  test "should show contest" do
    get contest_url(@contest), as: :json
    assert_response :success
  end

  test "should update contest" do
    patch contest_url(@contest), params: { contest: { city: @contest.city, email: @contest.email, name: @contest.name, surname: @contest.surname, telephone: @contest.telephone } }, as: :json
    assert_response :success
  end

  test "should destroy contest" do
    assert_difference("Contest.count", -1) do
      delete contest_url(@contest), as: :json
    end

    assert_response :no_content
  end
end
