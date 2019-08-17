Rails.application.routes.draw do
  resources :line_items
  resources :carts
  resources :apparels
  devise_for :users, controllers: {
    registrations: 'registrations'
  }
  root 'apparels#index'
end
