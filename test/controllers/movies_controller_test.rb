require 'test_helper'

class MoviesControllerTest < ActionDispatch::IntegrationTest
  test "should return movies in API" do
    # Load movies data from CSV file
    Movie.load_from_csv

    # Make a GET request to the movies API endpoint
    get '/api/v1/movies'

    # Check if the response has a 200 OK status code
    assert_response :success

    # Check if the response body includes at least one movie record
    response_body = JSON.parse(response.body)
    assert_not_empty response_body, "Response body should not be empty"
  end
end
