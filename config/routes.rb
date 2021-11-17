Rails.application.routes.draw do
  resources :pictures
  resources :profiles
  devise_for :users
  
  root to: "main#index"
  get "about", to: "about#index"

end
