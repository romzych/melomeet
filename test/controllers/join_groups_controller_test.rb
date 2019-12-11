require 'test_helper'

class JoinGroupsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get join_groups_create_url
    assert_response :success
  end

  test "should get index" do
    get join_groups_index_url
    assert_response :success
  end

  test "should get new" do
    get join_groups_new_url
    assert_response :success
  end

  test "should get edit" do
    get join_groups_edit_url
    assert_response :success
  end

  test "should get show" do
    get join_groups_show_url
    assert_response :success
  end

  test "should get update" do
    get join_groups_update_url
    assert_response :success
  end

  test "should get destroy" do
    get join_groups_destroy_url
    assert_response :success
  end

end
