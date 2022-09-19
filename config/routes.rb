Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :categories
      resources :motorcycles
      post '/signup', to: 'users#create'
      post '/login', to: 'sessions#login'
      get '/logout', to: 'sessions#destroy'
      get '/authorized', to: 'sessions#logged_in?'
    end
  end

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
