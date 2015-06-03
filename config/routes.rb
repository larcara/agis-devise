Rails.application.routes.draw do
  get 'home/index'

  resources :feedbacks
  resources :members
  resources :events
  resources :categories
  resources :owner_photos
  resources :owners
  root to: 'home#index'
  devise_for :users
  resources :users
end
