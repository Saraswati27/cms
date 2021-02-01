require 'test_helper'

class SecControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get sec_new_url
    assert_response :success
  end

  test "should get edit" do
    get sec_edit_url
    assert_response :success
  end

  test "should get show" do
    get sec_show_url
    assert_response :success
  end

  test "should get delete" do
    get sec_delete_url
    assert_response :success
  end

end
