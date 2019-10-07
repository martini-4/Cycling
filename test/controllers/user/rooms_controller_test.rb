require 'test_helper'

class User::RoomsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get user_rooms_index_url
    assert_response :success
  end

end
