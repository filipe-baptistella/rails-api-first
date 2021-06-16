Rails.application.routes.draw do
  resources :users, only: [:create, :update]
  post "/login", to: "users#login"
  get "/users", to: "users#index"
  get "/auto_login", to: "users#auto_login"

end
