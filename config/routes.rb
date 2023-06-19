Rails.application.routes.draw do
  get 'users/new'
  get 'users/create'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :users, only: [:new, :create]
  resources :desks, only: [:index]
  # Defines the root path route ("/")
  root "desks#index"
end
