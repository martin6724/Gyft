require 'test_helper'

class SuggestionsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get suggestions_index_url
    assert_response :success
  end

  test "should get show" do
    get suggestions_show_url
    assert_response :success
  end

  test "should get home" do
    get suggestions_home_url
    assert_response :success
  end

end
