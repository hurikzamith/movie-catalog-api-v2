require 'test_helper'

class MoviesControllerTest < ActionDispatch::IntegrationTest
  test "should get movies index" do
    get api_v1_movies_path
    assert_response :success
  end

  test "should get csv url" do
    get read_csv_api_v1_movies_path
    assert_response :success
  end
end
