PointB::Application.routes.draw do
  

  resources :destinations, only: :show

  devise_for :users, :path => '', :path_names => {:sign_in => 'login', :sign_out => 'logout'}

  resources :users do 
    resources :trips
  end

  root 'static_pages#home'

end
