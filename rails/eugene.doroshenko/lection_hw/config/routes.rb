Rails.application.routes.draw do
  
  get 'photos/index'
  get 'photos/show'
  get 'photos/new'
  get 'photos/create'
  get 'photos/edit'
  get 'photos/update'
  get 'photos/destroy'
  get 'galleries/index'
  get 'galleries/show'
  get 'galleries/new'
  get 'galleries/create'
  get 'galleries/edit'
  get 'galleries/update'
  get 'galleries/destroy'
  root 'home#index'
  resources :users
  resources :sessions, only: [:new, :create, :destroy]
  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'

end
