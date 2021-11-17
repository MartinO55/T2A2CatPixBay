Rails.application.routes.draw do
  resources :pictures
  resources :profiles
  devise_for :users, controllers: {registrations: 'users/registrations'}
  
  root to: "main#index"
  get "about", to: "about#index"

end
