Rails.application.routes.draw do
  get 'users/new'
  get 'users/create'

  get 'desks/new'
  get 'desks/create'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :users, only: [:new, :create]
  resources :desks, only: [:index, :new, :create]
  # Defines the root path route ("/")
  root "desks#index"
end
