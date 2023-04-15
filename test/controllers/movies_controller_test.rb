require 'test_helper'

class MoviesControllerTest < ActionDispatch::IntegrationTest

  test "should get index" do
    get api_v1_movies_url
    assert_response :success
    assert_equal response.parsed_body.keys, ['movies', 'current_page', 'total_pages', 'total_count']
  end

  test "should get filtered movies" do
    Movie.create(title: 'The Matrix', year: '1999')
    Movie.create(title: 'Inception', year: '2010')

    get api_v1_movies_url, params: { year: '1999' }
    assert_response :success
    assert_equal response.parsed_body['movies'].size, 1
    assert_equal response.parsed_body['movies'][0]['title'], 'The Matrix'

    get api_v1_movies_url, params: { title: 'Inception' }
    assert_response :success
    assert_equal response.parsed_body['movies'].size, 1
    assert_equal response.parsed_body['movies'][0]['title'], 'Inception'
  end


end
