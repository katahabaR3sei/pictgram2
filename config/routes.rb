Rails.application.routes.draw do
  get 'topics/new'
  get 'sessions/new'
  get 'users/new'
  root "pages#index"
  get "pages/help"
  resources :users

  get "/login", to: "sessions#new"
  post "/login", to: "sessions#create"
  delete "/login", to: "sessions#destory"

  resources :users
  resources :topics
end
