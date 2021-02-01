require 'test_helper'

class DummyControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get dummy_index_url
    assert_response :success
  end

  test "should get show" do
    get dummy_show_url
    assert_response :success
  end

  test "should get new" do
    get dummy_new_url
    assert_response :success
  end

  test "should get edit" do
    get dummy_edit_url
    assert_response :success
  end

  test "should get delete" do
    get dummy_delete_url
    assert_response :success
  end

end
