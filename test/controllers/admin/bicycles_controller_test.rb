require 'test_helper'

class Admin::BicyclesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_bicycles_index_url
    assert_response :success
  end

  test "should get edit" do
    get admin_bicycles_edit_url
    assert_response :success
  end

end
