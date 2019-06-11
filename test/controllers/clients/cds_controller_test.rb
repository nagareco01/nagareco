require 'test_helper'

class Clients::CdsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get clients_cds_show_url
    assert_response :success
  end

  test "should get index" do
    get clients_cds_index_url
    assert_response :success
  end

  test "should get search" do
    get clients_cds_search_url
    assert_response :success
  end

end
