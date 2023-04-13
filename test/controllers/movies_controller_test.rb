require 'test_helper'

class MoviesControllerTest < ActionDispatch::IntegrationTest
  test "should get movies index" do
    get api_v1_movies_path
    assert_response :success
  end

  test "should get index" do
    get api_v1_movies_url
    assert_response :success
  end
end
