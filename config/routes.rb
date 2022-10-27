Rails.application.routes.draw do
  resources :orginizations
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "me", to: "sessions#show"
  post "login", to: "sessions#create"
end