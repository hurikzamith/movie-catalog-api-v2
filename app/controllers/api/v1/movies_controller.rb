class Api::V1::MoviesController < ApplicationController

  def read_csv
    require 'csv'
    csv_text = File.read('netflix_titles.csv')
    csv = CSV.parse(csv_text, headers: true)
    csv.each do |row|
      Movie.find_or_create_by(title: row['title'], genre: row['listed_in'], year: row['release_year'], country: row['country'], published_at: row['date_added'], description: row['description'])
    end
    render json: { message: "Dados do CSV importados com sucesso!" }
  end

  def index

    # Movies in ascendent order by year
    movies = Movie.order(year: :asc)

    # Allows queries to filter by attribute
    movies = movies.where(year: params[:year]) if params[:year].present?
    movies = movies.where(genre: params[:genre]) if params[:genre].present?
    movies = movies.where(country: params[:country]) if params[:country].present?
    movies = movies.where(title: params[:title]) if params[:title].present?
    movies = movies.where(published_at: params[:published_at]) if params[:published_at].present?
    movies = movies.where(description: params[:description]) if params[:description].present?

    # Paginates the API JSON presentation (kaminari gem)
    movies = movies.page(params[:page]).per(params[:per_page])

    # Renders movies and displays current page
    render json: {
      movies: movies,
      current_page: movies.current_page,
      total_pages: movies.total_pages,
      total_count: movies.total_count
    }
  end
end
