Rails.application.routes.draw do

  namespace 'api' do
    namespace 'v1' do
      resources :movies, only: [:index]
    end
  end

  get 'api/v1/movies/read_csv'

end
