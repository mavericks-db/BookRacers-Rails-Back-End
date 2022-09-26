Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get '/users', to: 'users#index'
      post "/signup", to: "users#create"
      post "/login", to: "sessions#create"
      get "/authorized", to: "sessions#show"
      get "/logout", to: "sessions#logout"

      # For reservations CRUD
      get '/reservations', to: 'reservations#index'
      get '/reservations/:id', to: 'reservations#show'
      post '/add_reservation', to: 'reservations#create'
      delete '/del_reservation', to: 'reservations#destroy'

      # For motorcycles CRUD
      get '/motorcycles', to: 'motorcycles#index'
      get '/motorcycles/:id', to: 'motorcycles#show'
      post '/add_motorcycle', to: 'motorcycles#create'
      delete '/del_motorcycle', to: 'motorcycles#destroy'

      # For categories CRUD
      get '/categories', to: 'categories#index'
      get '/categories/:id', to: 'categories#show'
      post '/add_category', to: 'categories#create'
      delete '/del_category', to: 'categories#destroy'
    end
  end
end
