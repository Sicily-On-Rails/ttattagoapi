require "test_helper"

class TelephonesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @telephone = telephones(:one)
  end

  test "should get index" do
    get telephones_url, as: :json
    assert_response :success
  end

  test "should create telephone" do
    assert_difference("Telephone.count") do
      post telephones_url, params: { telephone: { number: @telephone.number, telephonable_id: @telephone.telephonable_id, telephonable_type: @telephone.telephonable_type } }, as: :json
    end

    assert_response :created
  end

  test "should show telephone" do
    get telephone_url(@telephone), as: :json
    assert_response :success
  end

  test "should update telephone" do
    patch telephone_url(@telephone), params: { telephone: { number: @telephone.number, telephonable_id: @telephone.telephonable_id, telephonable_type: @telephone.telephonable_type } }, as: :json
    assert_response :success
  end

  test "should destroy telephone" do
    assert_difference("Telephone.count", -1) do
      delete telephone_url(@telephone), as: :json
    end

    assert_response :no_content
  end
end
