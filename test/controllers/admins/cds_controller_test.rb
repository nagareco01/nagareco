require 'test_helper'

class Admins::CdsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get admins_cds_new_url
    assert_response :success
  end

  test "should get show" do
    get admins_cds_show_url
    assert_response :success
  end

  test "should get index" do
    get admins_cds_index_url
    assert_response :success
  end

  test "should get edit" do
    get admins_cds_edit_url
    assert_response :success
  end

  test "should get create" do
    get admins_cds_create_url
    assert_response :success
  end

  test "should get update" do
    get admins_cds_update_url
    assert_response :success
  end

  test "should get destroy" do
    get admins_cds_destroy_url
    assert_response :success
  end

end
