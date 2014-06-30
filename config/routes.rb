Rails.application.routes.draw do

  resources :comments
  resources :hotels
  devise_for :users
  resources :users

  root :to => "home#index"

end
