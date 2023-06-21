Rails.application.routes.draw do
  resources :users
  resources :beers, :breweries
  resources :ratings, only: %i[index new create destroy]
  resource :session, only: [:new, :create, :destroy]

  root 'breweries#index'

  get "signup", to: "users#new"

  # get 'ratings', to: 'ratings#index'
  # get 'ratings/new', to: 'ratings#new'
  # post 'ratings', to: 'ratings#create'
end
