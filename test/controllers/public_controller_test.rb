require 'test_helper'

class PublicControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get public_index_url
    assert_response :success
  end

  test "should get view" do
    get public_view_url
    assert_response :success
  end

end
