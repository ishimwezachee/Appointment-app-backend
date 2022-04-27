require "test_helper"

class RatingsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get ratings_index_url
    assert_response :success
  end
end
