require 'test_helper'

class UserGroupsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get user_groups_index_url
    assert_response :success
  end

  test "should get create" do
    get user_groups_create_url
    assert_response :success
  end

  test "should get edit" do
    get user_groups_edit_url
    assert_response :success
  end

end
