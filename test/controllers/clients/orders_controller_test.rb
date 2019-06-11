require 'test_helper'

class Clients::OrdersControllerTest < ActionDispatch::IntegrationTest
  test "should get buy" do
    get clients_orders_buy_url
    assert_response :success
  end

  test "should get purchase" do
    get clients_orders_purchase_url
    assert_response :success
  end

end
