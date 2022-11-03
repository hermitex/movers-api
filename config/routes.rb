# routes

Rails.application.routes.draw do
  resources :payments
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
  resources :movers, only: [:index, :show, :create, :update, :destroy]
  resources :users, only: [:index, :create, :update, :destroy]
  resources :locations
  resources :users do
    member do
      get :confirm_email
    end
  end

    # User
    get '/users/:user_id'  => 'users#find_user'
    post '/signup' => 'users#create'
    get '/me' => 'users#show'
    post '/login' => 'sessions#create'
    delete '/logout' => 'sessions#destroy'

    # my orders
    get '/bookings' => "move_bookings#index"

end

