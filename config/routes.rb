Rails.application.routes.draw do
  get 'food/index'

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users

  resources :earning

  root to: "home#index"
end
