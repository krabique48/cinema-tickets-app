Rails.application.routes.draw do
  get 'home/index'
  
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    passwords: 'users/passwords',
    registrations: 'users/registrations'
  }
  
  resources :users, only: [:show]
  
  root to: "home#index"
  
end