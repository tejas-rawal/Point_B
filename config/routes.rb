PointB::Application.routes.draw do
  resources :trips

  resources :destinations, only: :show

  devise_for :users, :path => '', :path_names => {:sign_in => 'login', :sign_out => 'logout'}

  resources :users

  devise_scope :user do
    get "/" => "devise/sessions#new"
  end
  

end
