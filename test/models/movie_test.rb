require "test_helper"

class MovieTest < ActiveSupport::TestCase
  test "should create movie" do
    movie = Movie.new(title: "The Godfather", genre: "Crime", year: "1972", country: "United States", published_at: "1972-03-24", description: "The aging patriarch of an organized crime dynasty transfers control of his clandestine empire to his reluctant son.")
    assert movie.save
  end
end
