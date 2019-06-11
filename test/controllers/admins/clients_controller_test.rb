require 'test_helper'

class Admins::ClientsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admins_clients_index_url
    assert_response :success
  end

  test "should get show" do
    get admins_clients_show_url
    assert_response :success
  end

  test "should get edit" do
    get admins_clients_edit_url
    assert_response :success
  end

  test "should get update" do
    get admins_clients_update_url
    assert_response :success
  end

  test "should get destroy" do
    get admins_clients_destroy_url
    assert_response :success
  end

end
