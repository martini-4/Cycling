require 'test_helper'

class User::ContractsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get user_contracts_index_url
    assert_response :success
  end

  test "should get show" do
    get user_contracts_show_url
    assert_response :success
  end

  test "should get new" do
    get user_contracts_new_url
    assert_response :success
  end

  test "should get confirm" do
    get user_contracts_confirm_url
    assert_response :success
  end

end
