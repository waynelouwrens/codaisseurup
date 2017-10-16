Rails.application.routes.draw do
  resources :categories
  resources :users, only: [:show]
  resources :events, except: [:destroy]
  resources :profiles, only: [:new, :edit, :create, :update]

  root to: 'pages#home'

  devise_for :users


end
