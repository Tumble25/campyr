Rails.application.routes.draw do
  root to: 'pages#home'
  devise_for :users
  # resources :users, only: [:new, :create]

  #                           AS CAMPER       / AS OWNER STARTING AT NEW
  resources :campsites, only: [:index, :show, :new, :create] do
    resources :reservations, only: [:new, :create] # AS CAMPER
  end

  # AS BOTH
  resource :dashboard, only: [:show]

  # AS OWNER
  resources :reservations, only: [:show] do
    member do
      patch :confirm
      patch :decline
    end

  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
