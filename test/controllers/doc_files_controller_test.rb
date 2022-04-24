require "test_helper"

class DocFilesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @doc_file = doc_files(:one)
  end

  test "should get index" do
    get doc_files_url, as: :json
    assert_response :success
  end

  test "should create doc_file" do
    assert_difference("DocFile.count") do
      post doc_files_url, params: { doc_file: { document_id: @doc_file.document_id, file: @doc_file.file } }, as: :json
    end

    assert_response :created
  end

  test "should show doc_file" do
    get doc_file_url(@doc_file), as: :json
    assert_response :success
  end

  test "should update doc_file" do
    patch doc_file_url(@doc_file), params: { doc_file: { document_id: @doc_file.document_id, file: @doc_file.file } }, as: :json
    assert_response :success
  end

  test "should destroy doc_file" do
    assert_difference("DocFile.count", -1) do
      delete doc_file_url(@doc_file), as: :json
    end

    assert_response :no_content
  end
end
