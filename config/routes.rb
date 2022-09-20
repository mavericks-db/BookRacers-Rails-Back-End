Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      post '/signup', to: 'users#create'
      post '/login', to: 'sessions#login'
      get '/logout', to: 'sessions#destroy'
      get '/authorized', to: 'sessions#logged_in?'
      delete '/reservations/:id', to: 'reservations#destroy'
      get '/reservations', to: 'reservations#index'
      get '/reservations/:id', to: 'reservations#show'
      post '/add_reservation', to: 'reservations#create'
      get '/motorcycles', to: 'motorcycles#index'
      get '/motorcycles/:id', to: 'motorcycles#show'
      post '/add_motorcycle', to: 'motorcycles#create'
      delete '/motorcycles/:id', to: 'motorcycles#destroy'
      get '/categories', to: 'categories#index'
      get '/categories/:id', to: 'categories#show'
      post '/add_category', to: 'categories#create'
      delete '/categories/:id', to: 'categories#destroy'
    end
  end
end
