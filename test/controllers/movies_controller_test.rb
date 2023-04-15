require 'test_helper'

class MoviesControllerTest < ActionDispatch::IntegrationTest

  setup do
    Movie.create(title: 'The Matrix', year: '1999', genre: 'Action', country: 'United States', published_at: '1999-03-31', description: 'A computer hacker..')
    Movie.create(title: 'Inception', year: '2010', genre: 'Action', country: 'United States', published_at: '2010-07-16', description: 'A thief who steals corporate secrets ..')
  end

  test "should get index" do
    get api_v1_movies_url
    assert_response :success
    assert_equal response.parsed_body.keys, ['movies', 'current_page', 'total_pages', 'total_count']
  end

  test "should get filtered movies" do
    get api_v1_movies_url, params: { year: '1999' }
    assert_response :success
    assert_equal response.parsed_body['movies'].size, 1
    assert_equal response.parsed_body['movies'][0]['title'], 'The Matrix'

    get api_v1_movies_url, params: { title: 'Inception' }
    assert_response :success
    assert_equal response.parsed_body['movies'].size, 1
    assert_equal response.parsed_body['movies'][0]['title'], 'Inception'
  end

  test "should filter movies by genre" do
    get api_v1_movies_url, params: { genre: 'Action' }
    assert_response :success
    assert_equal response.parsed_body['movies'][0]['genre'], 'Action'
  end


  test "should filter movies by country" do
    get api_v1_movies_url, params: { country: 'United States' }
    assert_response :success
    assert_equal response.parsed_body['movies'][0]['country'], 'United States'
  end


end
