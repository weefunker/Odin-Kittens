require 'test_helper'

class KittensControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get kittens_new_url
    assert_response :success
  end

  test "should get edit" do
    get kittens_edit_url
    assert_response :success
  end

  test "should get show" do
    get kittens_show_url
    assert_response :success
  end

end
