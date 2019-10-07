require 'test_helper'

class Owner::RoomsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get owner_rooms_index_url
    assert_response :success
  end

end
