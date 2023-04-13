Rails.application.routes.draw do
  namespace 'api' do
    namespace 'v1' do
      resources :movies, only: [:index]
    end
  end

  namespace 'api' do
    namespace 'v1' do
      get 'movies/read_csv'
    end
  end

end
