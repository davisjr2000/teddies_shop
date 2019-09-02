Rails.application.routes.draw do

  # USERS
  devise_for :users

  # TEDDIES
  root 'teddies#index'
  resources :teddies, only: [:index, :show]

  # ORDERS
  resources :orders, only: [:show, :create] do
    # PAYMENTS
    resources :payments, only: [:new, :create]
  end
end
