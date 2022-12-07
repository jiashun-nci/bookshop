Rails.application.routes.draw do
  resources :searches
  devise_for :users
  resources :reviews
  resources :books do
  	resources :reviews
  end
  resources :categories
  resources :authors
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "books#index"
end
