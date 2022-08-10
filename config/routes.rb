Rails.application.routes.draw do
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  post 'api/v1/users', to: 'api/v1/users#create'
  post 'api/v1/sessions', to: 'api/v1/sessions#creater'
  post 'api/v1/sessions', to: 'api/v1/sessions#creater'
  
  namespace :api do
    namespace :v1 do
      resources :forecast, only: %i[index]
      resources :munchies, only: [:index]
      resources :users, only: [:new, :create]
    end
  end

end
