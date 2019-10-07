require 'test_helper'

class Admin::NewUsersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_new_users_index_url
    assert_response :success
  end

  test "should get edit" do
    get admin_new_users_edit_url
    assert_response :success
  end

end
