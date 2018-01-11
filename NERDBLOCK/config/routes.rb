Rails.application.routes.draw do
  get 'password_resets/new'

  get 'password_resets/edit'

  root   'static_pages#home'
  get    '/help',    to: 'static_pages#help'
  get    '/about',   to: 'static_pages#about'
  get    '/contact', to: 'static_pages#contact'
  get    '/signup',  to: 'users#new'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  get	 '/subscriptions',    to: 'subscriptions#index'
  get  '/genres',           to: 'genres#index'
  post	 '/genres/:id',    to: 'subscriptions#create'
  post '/items/:id/edit', to: 'items#update'
  get '/items/new', to: 'items#new'
  post '/items/new',   to: 'items#create'

  resources :users
  resources :subscriptions
  resources :genres
  resources :items
  resources :account_activations, only: [:edit]
  resources :password_resets,     only: [:new, :create, :edit, :update]
end
