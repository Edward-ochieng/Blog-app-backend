Rails.application.routes.draw do
  resources :articles, only:[:update,:create, :show, :destroy,:index]
  resources :users, only:[:update, :show, :destroy, :index]
  resources :tags, only:[:show, :index]
  resources :reviews, only:[:update,:create,:destroy,:index]
  post "/signup", to: "users#create"
  get "/me", to: "users#show"
  get "/writer/:id", to: "users#show_writer"

  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
  # delete "/reviews/:id", to: "reviews#destroy"

  
end
