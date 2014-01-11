PointB::Application.routes.draw do
  resources :trips

  resources :destinations, only: :show

  devise_for :users, :path => '', :path_names => {:sign_in => 'login', :sign_out => 'logout'}

  resources :users

<<<<<<< HEAD
  # devise_scope :user do
  #   get "/" => "devise/sessions#new"
  # end
  root "static_pages#home"
=======
  root 'static_pages#home'
>>>>>>> e32dfcd4bec9c8f6de661a50375977fc8ab99e71

end
