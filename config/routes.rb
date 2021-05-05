Rails.application.routes.draw do

  devise_for :users
  root 'pages#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :invites, only: [:index, :new, :create, :destroy]
  resources :tests, only: [:index, :show, :new, :create, :destroy]
  resources :solutions, only: [:index, :show, :update, :destroy]
end
