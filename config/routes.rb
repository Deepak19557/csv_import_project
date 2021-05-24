Rails.application.routes.draw do
  # root "countries#index"
  # resources :countries
  root "users#index"
  resources :users
  #get "delete_user", to: "users#delete_user"
  get "user_delete", to: "users#user_delete"
end
