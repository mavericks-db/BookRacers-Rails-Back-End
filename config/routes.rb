Rails.application.routes.draw do
  get 'categories/index'
  namespace :api do
    namespace :v1 do
      resources :categories
      resources :motorcycles
    end
  end

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
