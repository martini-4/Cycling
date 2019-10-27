require 'test_helper'

class Admin::NewBicycleControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_new_bicycle_index_url
    assert_response :success
  end

  test "should get edit" do
    get admin_new_bicycle_edit_url
    assert_response :success
  end

end
