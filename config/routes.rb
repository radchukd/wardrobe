Rails.application.routes.draw do
  resources :apparels
  devise_for :users, controllers: {
    registrations: 'registrations'
  }
  root 'apparels#index'
end
