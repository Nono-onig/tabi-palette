require "test_helper"

class UsersControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  test "マイページはログインが必要" do
    get user_path(users(:one))
    assert_redirected_to new_user_session_path
  end

  test "ログインするとマイページが表示される" do
    sign_in users(:one)
    get user_path(users(:one))
    assert_response :success
    assert_select ".post-card", 1
  end

  test "ログイン・新規登録ページが表示される" do
    get new_user_session_path
    assert_response :success
    get new_user_registration_path
    assert_response :success
    get new_user_password_path
    assert_response :success
  end

  test "ログインできる" do
    post user_session_path, params: { user: { email: "one@example.com", password: "password" } }
    assert_redirected_to root_path
  end
end
