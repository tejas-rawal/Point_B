PointB::Application.routes.draw do
  resources :trips

  resources :destinations, only: :show

  devise_for :users

  resources :users

  # devise_scope :user do
  #   get "/" => "devise/sessions#new"
  # end
  root "static_pages#home"

end
