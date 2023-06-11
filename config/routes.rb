Rails.application.routes.draw do
  resources :beers
  resources :breweries

  root "breweries#index"

  get "all_beers", to: "beers#index"
  get "ratings", to: "ratings#index"
end
