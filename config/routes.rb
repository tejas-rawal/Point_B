PointB::Application.routes.draw do
  resources :destinations, only: :show

  devise_for :users

  resources :users

  root 'users#index'

end
