PointB::Application.routes.draw do
  
  devise_for :users, :path => '', :path_names => {:sign_in => 'login', :sign_out => 'logout'}

  scope :api do
    post 'destinations/:id/posts' => 'destinations#posts', :as => :destination_post_api
    
  resources :users do 
    resources :destinations
  end

  root 'static_pages#home'

end
