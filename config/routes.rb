Rails.application.routes.draw do

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  resources :adresses
  resources :comments
  resources :ratings, only: :update
  resources :hotels

  devise_for :users
  resources :users

  root :to => "home#index"

end
