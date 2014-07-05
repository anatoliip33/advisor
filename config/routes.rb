Rails.application.routes.draw do

  resources :adresses
  resources :comments
  resources :ratings, only: :update
  resources :hotels
  devise_for :users
  resources :users

  root :to => "home#index"

end
