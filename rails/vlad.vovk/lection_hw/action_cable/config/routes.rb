Rails.application.routes.draw do
  get 'pages/home'
  root to: "pages#home"

  resources :messages, only: [:create, :destroy]
  resources :users,    only: [:new, :show, :create]
  resources :sessions, only: [:create, :destroy]
  resources :rooms

  get :signup, to: 'users#new',        as: :signup
  get :login,  to: 'sessions#new',     as: :login
  get :logout, to: 'sessions#destroy', as: :logout
end
