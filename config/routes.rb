PointB::Application.routes.draw do
  resources :trips

  resources :destinations, only: :show

  devise_for :users

  resources :users

  root 'static_pages#home'

end
