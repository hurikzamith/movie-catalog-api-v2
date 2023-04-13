Rails.application.routes.draw do
  root to: 'api/v1/movies#index'
  get 'api/v1/movies/read_csv'
  # namespace 'api' do
  #   namespace 'v1' do
  #     resources :movies, only: [:index]
  #   end
  # end
end
