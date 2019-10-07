require 'test_helper'

class Owner::PayeesControllerTest < ActionDispatch::IntegrationTest
  test "should get edit" do
    get owner_payees_edit_url
    assert_response :success
  end

end
