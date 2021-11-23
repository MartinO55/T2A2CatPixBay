Rails.application.routes.draw do
  devise_for :controllers
  resources :pictures
  resources :profiles

  devise_for :users, skip: [:sessions, :registrations, :passwords]#devise started chucking a hissy fit for unknown reasons - adding this here is a solution
  devise_scope :user do
    # sessions
    get    'login',  to: 'devise/sessions#new',     as: :new_user_session
    post   'login',  to: 'devise/sessions#create',  as: :user_session
    delete 'logout', to: 'devise/sessions#destroy', as: :destroy_user_session #for some unknown reason it was treating the delete path as a get path. I don't think its broke?
    # registrations
    put    '/account',  to: 'devise/registrations#update'
    delete '/account',  to: 'devise/registrations#destroy'
    post   '/account',  to: 'devise/registrations#create'
    get    '/register', to: 'devise/registrations#new',    as: :new_user_registration
    get    '/account',  to: 'devise/registrations#edit',   as: :edit_user_registration
    patch  '/account',  to: 'devise/registrations#update', as: :user_registration
    get    '/account/cancel', to: 'devise/registrations#cancel', as: :cancel_user_registration# passwords 
    # passwords
    get   'new-pass',  to: 'devise/passwords#new',    as: :new_user_password
    get   'edit-pass', to: 'devise/passwords#edit',   as: :edit_user_password
    patch 'edit-pass', to: 'devise/passwords#update', as: :user_password
  #  post  'new-pass',  to: 'devise/passwords#create', as: :user_password
  end
    
    get 'mypictures', to: 'profiles#mypictures', as: :my_pictures

  root to: "main#index"
  get "about", to: "about#index"

end
