require 'rails_helper'
# require "test_helper"
# require "rails/test_help"
# require "minitest/autorun"

class MoviesApiTest < ActionDispatch::IntegrationTest
  # Your test cases will go here
  test "should get list of movies" do
    get "/api/v1/movies"
    assert_response :success
  end
end

# describe 'MovieController', type: :request do
#   context 'index' do
#     it 'should return status ok' do
#       get api_v1_movies_path

#       expect(response).to have_http_status(200)
#     end
#   end
# end
