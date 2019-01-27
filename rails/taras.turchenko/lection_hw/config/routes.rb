Rails.application.routes.draw do
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
