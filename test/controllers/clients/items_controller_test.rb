require 'test_helper'

class Clients::ItemsControllerTest < ActionDispatch::IntegrationTest
  test "should get add_item" do
    get clients_items_add_item_url
    assert_response :success
  end

  test "should get edit" do
    get clients_items_edit_url
    assert_response :success
  end

  test "should get update" do
    get clients_items_update_url
    assert_response :success
  end

  test "should get destroy" do
    get clients_items_destroy_url
    assert_response :success
  end

end
