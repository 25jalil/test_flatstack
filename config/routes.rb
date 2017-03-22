Rails.application.routes.draw do
  root 'events#calendar'
  resources :events
  get 'my_events', to: 'events#my_events'
  get 'new_algorithms', to: 'algorithms#new'
  get 'algorithms/(:number)', to: 'algorithms#display', as: :algorithms

  resources :sessions, only: [:new, :create, :destroy]
  resources :users

  match '/signup',  to: 'users#new',        via: 'get'
  match '/signin',  to: 'sessions#new',     via: 'get'
  match '/signout', to: 'sessions#destroy', via: 'delete'
end

