Rails.application.routes.draw do
  scope :tamagotchi, controller: :tamagotchi do
    get :create
    get :stats
    get :action
  end
end
