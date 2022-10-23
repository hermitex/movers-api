Rails.application.routes.draw do
  resources :account_balances
  resources :specialities
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

  get '/users/:user_id'  => 'users#find_user'

  post '/users' => 'users#create'

  patch '/users/:user_id' => 'users#update'

  delete '/users/:user_id' => 'users#destroy'

  get '/me' => 'users#show'

  post '/signup' => "users#create"

  # Session
  post '/login' => 'sessions#create'

  delete 'logout' => 'sessions#destroy'

  # Movers
  get '/movers' => 'movers#index'

  post '/movers' => 'movers#create'

  patch '/movers/:mover_id' => 'movers#update'

  delete '/movers/:mover_id' => 'movers#destroy'


  # Customers
  get '/customers' => 'customers#index'

  post '/customers' => 'customers#create'

  patch '/customers/:customer_id' => 'customers#update'

  delete '/customers/:customer_id' => 'customers#destroy'



end
