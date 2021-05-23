require "test_helper"

class ContriesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get contries_new_url
    assert_response :success
  end

  test "should get index" do
    get contries_index_url
    assert_response :success
  end
end
