require 'test_helper'

class Owner::BicyclesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get owner_bicycles_new_url
    assert_response :success
  end

  test "should get edit" do
    get owner_bicycles_edit_url
    assert_response :success
  end

end
