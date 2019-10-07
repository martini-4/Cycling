require 'test_helper'

class Owner::OwnersControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get owner_owners_show_url
    assert_response :success
  end

  test "should get edit" do
    get owner_owners_edit_url
    assert_response :success
  end

  test "should get withdrawal" do
    get owner_owners_withdrawal_url
    assert_response :success
  end

end
