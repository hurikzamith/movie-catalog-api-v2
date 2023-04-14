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

  # test "should have the same number of IDs in JSON as in database" do
  #   # Count the number of movies in the database
  #   db_count = Movie.count

  #   # Make a GET request to the API endpoint
  #   get api_v1_movies_path

  #   # Parse the response JSON and count the number of IDs
  #   json_count = JSON.parse(response.body)["title"].to_i.size

  #   # Compare the counts
  #   assert_equal db_count, json_count, "Number of IDs in JSON does not match number of movies in database"
  # end

end
