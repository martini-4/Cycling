require 'test_helper'

class Admin::NewOwnersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_new_owners_index_url
    assert_response :success
  end

  test "should get edit" do
    get admin_new_owners_edit_url
    assert_response :success
  end

end
