Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get '/users', to: 'users#index'
      post "/signup", to: "users#create"
      post "/login", to: "sessions#create"
      get "/authorized", to: "sessions#show"

      # For reservations CRUD
      get '/reservations', to: 'reservations#index'
      get '/reservations/:id', to: 'reservations#show'
      post '/add_reservation', to: 'reservations#create'
      delete '/reservations/:id', to: 'reservations#destroy'

      # For motorcycles CRUD
      get '/motorcycles', to: 'motorcycles#index'
      get '/motorcycles/:id', to: 'motorcycles#show'
      post '/add_motorcycle', to: 'motorcycles#create'
      delete '/motorcycles/:id', to: 'motorcycles#destroy'

      # For categories CRUD
      get '/categories', to: 'categories#index'
      get '/categories/:id', to: 'categories#show'
      post '/add_category', to: 'categories#create'
      delete '/categories/:id', to: 'categories#destroy'
    end
  end
end
