Rails.application.routes.draw do
  get "signup", to: "users#new"
  get "signin", to: "sessions#new"
  delete "signout", to: "sessions#destroy"

  resources :beers, :breweries, :users
  resources :ratings, only: %i[index new create destroy]
  resource :session, only: [:new, :create, :destroy]

  root "breweries#index"
end
