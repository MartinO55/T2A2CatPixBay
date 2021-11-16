Rails.application.routes.draw do
  devise_for :users
  root to: "main#index"
  get "about", to: "about#index"

end
