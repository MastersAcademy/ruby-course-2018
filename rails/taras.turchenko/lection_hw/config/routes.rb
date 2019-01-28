Rails.application.routes.draw do
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
  resources :users

  resources :sessions, only: [:new, :create, :destroy]
  get :signup, to: 'users#new'
  get :login, to: 'sessions#new'
  get :logout, to: 'sessions#destroy'

  scope :tamagotchi, controller: :tamagotchi do
    get :create
    get :stats
    get :action
  end

  scope :cinema do
    resources :categories
    resources :movies
    patch 'movies/:id/vote', to: 'movies#vote'
  end
end
