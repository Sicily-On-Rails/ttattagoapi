require "test_helper"

class UsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = users(:one)
  end

  test "should get index" do
    get users_url, as: :json
    assert_response :success
  end

  test "should create user" do
    assert_difference("User.count") do
      post users_url, params: { user: { admin: @user.admin, business_name: @user.business_name, current_sign_in_at: @user.current_sign_in_at, current_sign_in_ip: @user.current_sign_in_ip, email: @user.email, encrypted_password: @user.encrypted_password, last_sign_in_at: @user.last_sign_in_at, last_sign_in_ip: @user.last_sign_in_ip, name: @user.name, remember_created_at: @user.remember_created_at, reset_password_sent_at: @user.reset_password_sent_at, reset_password_token: @user.reset_password_token, sign_in_count: @user.sign_in_count, surname: @user.surname } }, as: :json
    end

    assert_response :created
  end

  test "should show user" do
    get user_url(@user), as: :json
    assert_response :success
  end

  test "should update user" do
    patch user_url(@user), params: { user: { admin: @user.admin, business_name: @user.business_name, current_sign_in_at: @user.current_sign_in_at, current_sign_in_ip: @user.current_sign_in_ip, email: @user.email, encrypted_password: @user.encrypted_password, last_sign_in_at: @user.last_sign_in_at, last_sign_in_ip: @user.last_sign_in_ip, name: @user.name, remember_created_at: @user.remember_created_at, reset_password_sent_at: @user.reset_password_sent_at, reset_password_token: @user.reset_password_token, sign_in_count: @user.sign_in_count, surname: @user.surname } }, as: :json
    assert_response :success
  end

  test "should destroy user" do
    assert_difference("User.count", -1) do
      delete user_url(@user), as: :json
    end

    assert_response :no_content
  end
end
