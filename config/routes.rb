Rails.application.routes.draw do
  get 'topics/new'
  get 'sessions/new'
  get 'users/new'
  root "pages#index"
  get "pages/help"
  resources :users

  get "/login", to: "sessions#new"
  post "/login", to: "sessions#create"
  get "/logout", to: "sessions#destroy"

  resources :users
  resources :topics

  get "favorites/index"
  get "comments/index", to:"comments#index"
  get "comments/new"
  get "/favorites", to:"favorites#create"
  delete "/favorites", to:"favorites#destroy"
  post "comments/create",to:"comments#create"
end
