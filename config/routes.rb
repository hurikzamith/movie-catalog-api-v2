Rails.application.routes.draw do
  namespace 'api' do
    namespace 'v1' do
      resources :movies, only: [:index] do
        get 'read_csv', on: :collection
      end
    end
  end
end
