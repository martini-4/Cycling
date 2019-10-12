require 'test_helper'

class Owner::LendDaysControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get owner_lend_days_new_url
    assert_response :success
  end

end
