require 'test_helper'

class Owner::ContractsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get owner_contracts_index_url
    assert_response :success
  end

  test "should get show" do
    get owner_contracts_show_url
    assert_response :success
  end

end
