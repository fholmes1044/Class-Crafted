Rails.application.routes.draw do
  root "sessions#home"
  get "/login", to: "sessions#new"
  post "/login", to: "sessions#create"
  delete "logout", to: "sessions#destroy"
  get "/signup", to: "users#new"
  post "/signup", to: "user#create"

end
