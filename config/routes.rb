Rails.application.routes.draw do
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :api do
    namespace :v1 do
      resources :forecast, only: %i[index]
      resources :munchies, only: [:index]
      resources :users, only: [:create]
    end
  end

end
