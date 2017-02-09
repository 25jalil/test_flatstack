Rails.application.routes.draw do
  root 'events#index'
  resources :events

  resources :sessions, only: [:new, :create, :destroy]
  resources :users
  match '/signup',  to: 'users#new',        via: 'get'
  match '/signin',  to: 'sessions#new',     via: 'get'
  match '/signout', to: 'sessions#destroy', via: 'delete'
end

