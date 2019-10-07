require 'test_helper'

class Admin::OwnersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_owners_index_url
    assert_response :success
  end

  test "should get show" do
    get admin_owners_show_url
    assert_response :success
  end

end
