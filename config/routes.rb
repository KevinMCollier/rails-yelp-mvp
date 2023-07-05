Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # READ ALL -> A user can see the list of all restaurants
  # get "restaurants", to: "restaurants#index", as: :restaurants

  # CREATE -> A user can add a new restaurant
  # get "restaurants/new", to: "restaurants#new", as: :new_restaurant
  # post "restaurants", to: "restaurants#create"

  # READ ONE -> A user can view one restaurant
  # get "restaurants/:id", to: "restaurants#show", as: :restaurant

  # CREATE -> A user can add a new review to a restaurant
  # get "restaurants/:id/reviews/new", to: "reviews#new", as: :new_review
  # post "restaurants/:id/reviews", to: "reviews#create", as: :restaurant_reviews

  resources :restaurants, only: [:index, :new, :create, :show] do
    resources :reviews, only: [:create]
  end
end
