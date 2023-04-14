require "test_helper"

class MovieTest < ActiveSupport::TestCase
  test "should create movie" do
    movie = Movie.new(title: "The Godfather", genre: "Crime", year: "1972", country: "United States", published_at: "1972-03-24", description: "The aging patriarch of an organized crime dynasty transfers control of his clandestine empire to his reluctant son.")
    assert movie.save
  end

  test "should have unique title movies, not allow duplicates" do
    movie1 = Movie.create(title: "The Matrix")
    assert movie1.valid?

    movie2 = Movie.new(title: "The Matrix")
    refute movie2.valid?, "Should not be valid with a duplicate title"
  end
end
