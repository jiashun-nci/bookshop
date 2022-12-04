Rails.application.routes.draw do
  resources :reviews
  resources :books do
  	resources :reviews
  end
  resources :categories
  resources :authors
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
