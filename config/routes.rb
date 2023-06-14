Rails.application.routes.draw do
  resources :beers
  resources :breweries

  root 'breweries#index'

  get 'all_beers', to: 'beers#index'
  get 'ratings', to: 'ratings#index'
  get 'ratings/new', to: 'ratings#new'
  post 'ratings', to: 'ratings#create'
end
