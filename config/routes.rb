Rails.application.routes.draw do
  # root "countries#index"
  # resources :countries

  root "users#index"
  resources :users

  #get 'users/new'
  #get 'users/index'
end
