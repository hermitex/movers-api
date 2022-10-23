Rails.application.routes.draw do
  resources :items
  resources :kitchen_items
  resources :dining_room_items
  resources :bed_room_items
  resources :living_room_items
  resources :notifications
  resources :chats
  resources :admins
  resources :move_bookings
  resources :inventory_checklists
  resources :rates
  resources :reviews

  # User
  get '/users'  => 'users#index'

  post '/users' => 'users#create'

  patch '/users' => 'users#update'

  delete '/users' => 'users#destroy'

  get '/me' => 'users#show'

  post '/signup' => "users#create"

  # Session
  post '/login' => 'sessions#create'

  delete 'logout' => 'sessions#destroy'

  # Movers
  get '/movers' => 'movers#index'

  post '/movers' => 'movers#create'

  patch '/movers' => 'movers#update'

  delete '/movers' => 'movers#destroy'


end
