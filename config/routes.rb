Rails.application.routes.draw do
  resources :visits , :questions, :formularies, :questions, :answers
  resources :users, only: [:create, :update]

  post "/login", to: "users#login" 
  get "/auto_login", to: "users#auto_login"

  # get "/users", to: "users#index"
  # get "/users/:id", to: "visits#show"
  # post "/users", to: "visits#create"
  # put "/users/:id", to: "visits#update"

  # get "/visits", to: "visits#index"
  # get "/visits/:id", to: "visits#show"
  # post "/visits", to: "visits#create"
  # put "/visits/:id", to: "visits#update"

  # get "/formularies", to: "formulary#index"
  # get "/formulary/:id", to: "question#index"
  # post "/formulary", to: "formulary#create"
  # put "/formulary/:id", to: "formulary#update"

  # get "/formulary/:id/question/", to: 
end
