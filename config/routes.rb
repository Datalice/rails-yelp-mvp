Rails.application.routes.draw do
root "restaurants#index"
  resources :restaurants, only: %i[index create new show] do
    resources :reviews, only: %i[new create]
  end
end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
