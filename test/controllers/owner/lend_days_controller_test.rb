require 'test_helper'

class Owner::LendDaysControllerTest < ActionDispatch::IntegrationTest
  test "should get edit" do
    get owner_lend_days_edit_url
    assert_response :success
  end

end
