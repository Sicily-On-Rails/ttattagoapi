require "test_helper"

class DocTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @doc_type = doc_types(:one)
  end

  test "should get index" do
    get doc_types_url, as: :json
    assert_response :success
  end

  test "should create doc_type" do
    assert_difference("DocType.count") do
      post doc_types_url, params: { doc_type: { name: @doc_type.name } }, as: :json
    end

    assert_response :created
  end

  test "should show doc_type" do
    get doc_type_url(@doc_type), as: :json
    assert_response :success
  end

  test "should update doc_type" do
    patch doc_type_url(@doc_type), params: { doc_type: { name: @doc_type.name } }, as: :json
    assert_response :success
  end

  test "should destroy doc_type" do
    assert_difference("DocType.count", -1) do
      delete doc_type_url(@doc_type), as: :json
    end

    assert_response :no_content
  end
end
