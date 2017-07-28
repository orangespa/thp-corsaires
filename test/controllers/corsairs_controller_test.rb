require 'test_helper'

class CorsairsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get corsairs_new_url
    assert_response :success
  end

  test "should get show" do
    get corsairs_show_url
    assert_response :success
  end

  test "should get edit" do
    get corsairs_edit_url
    assert_response :success
  end

  test "should get index" do
    get corsairs_index_url
    assert_response :success
  end

end
