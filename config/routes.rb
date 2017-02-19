Rails.application.routes.draw do
  root 'events#calendar'
  resources :events

  resources :sessions, only: [:new, :create, :destroy]
  resources :users
  match '/signup',  to: 'users#new',        via: 'get'
  match '/signin',  to: 'sessions#new',     via: 'get'
  match '/signout', to: 'sessions#destroy', via: 'delete'

  match '/test',  to: 'events#test',        via: 'get'
end

