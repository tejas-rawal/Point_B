PointB::Application.routes.draw do
  
  devise_for :users, :path => '', :path_names => {:sign_in => 'login', :sign_out => 'logout'}

  resources :users do 
    resources :destinations
  end
  
  resources :destinations, only: [:index, :show, :create]

  root 'static_pages#home'

end
