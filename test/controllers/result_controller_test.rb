require "test_helper"

class ResultControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get result_index_url
    assert_response :success
  end

  test "should get save" do
    get result_save_url
    assert_response :success
  end
end
