Rails.application.routes.draw do
  resources :beer_clubs
  get "signup", to: "users#new"
  get "signin", to: "sessions#new"
  delete "signout", to: "sessions#destroy"

  resources :beers, :breweries, :users
  resources :ratings, only: %i[index new create destroy]
  resource :session, only: [:new, :create, :destroy]

  root "breweries#index"
end

# see: localhost:3000/rails/info/routes
