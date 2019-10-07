require 'test_helper'

class Admin::MassagesControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get admin_massages_show_url
    assert_response :success
  end

end
