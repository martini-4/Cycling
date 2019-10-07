require 'test_helper'

class Owner::MessagesControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get owner_messages_show_url
    assert_response :success
  end

end
