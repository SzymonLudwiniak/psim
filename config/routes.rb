Rails.application.routes.draw do
  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout' }
  get 'users/new'
  get 'users/create'

  get 'desks/new'
  get 'desks/create'


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :users, only: [:index, :new, :create]
  resources :desks, only: [:index, :new, :create]
  resources :rooms, only: [:index, :new, :create]
  resources :reservations, only: [:index, :new, :create]
  # Defines the root path route ("/")
  root "desks#index"

end