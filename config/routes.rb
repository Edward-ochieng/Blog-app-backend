Rails.application.routes.draw do
  resources :articles, only:[:update,:create,:destroy,:index]
  resources :users
  resources :tags
  resources :reviews, only:[:update,:create,:destroy,:index]
  post "/signup", to: "users#create"
  get "/me", to: "users#show"
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
  # delete "/reviews/:id", to: "reviews#destroy"

  
end
