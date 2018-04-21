require 'test_helper'

class MainPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get main_pages_index_url
    assert_response :success
  end

  test "should get show" do
    get main_pages_show_url
    assert_response :success
  end

end
