Rails.application.routes.draw do
  get 'sessions/new'
  root "pages#index"
  get "pages/help"

  get "/login", to: "sessions#new"
  post "/login", to: "sessions#create"
  get "/logout", to: "sessions#destroy"

  resources :users

  resources :topics do
    resources :comments
  end

  get "favorites/index"
  get "/favorites", to:"favorites#create"
  delete "/favorites", to:"favorites#destroy"
end
