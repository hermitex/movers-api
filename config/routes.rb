# routes

Rails.application.routes.draw do
  resources :specialities
  resources :reviews
  resources :rates
  resources :quotes
  resources :notifications
  resources :move_bookings
  resources :living_room_items
  resources :kitchen_items
  resources :dining_room_items
  resources :chats
  resources :bed_room_items
  resources :admins
  resources :account_balances
  resources :items
  resources :inventory_checklists
  resources :customers, only: [:index, :show, :create, :update, :destroy]
  resources :movers, only: [:index, :create, :update, :destroy]
  resources :users, only: [:index, :create, :update, :destroy]
  resources :locations

    # User
    get '/users/:user_id'  => 'users#find_user'

    get '/me' => 'users#show'

    post '/signup' => "users#create"

    # Session
    post '/login' => 'sessions#create'

    delete '/logout' => 'sessions#destroy'

end

