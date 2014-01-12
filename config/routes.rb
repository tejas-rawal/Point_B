PointB::Application.routes.draw do

  devise_for :users, :path => '', :path_names => {:sign_in => 'login', :sign_out => 'logout'}

  resources :users do
    resources :destinations
  end

  scope :destinations do
    post ':id/posts' => 'destinations#post', :as => :destination_post_api
  end

  root 'static_pages#home'

end
