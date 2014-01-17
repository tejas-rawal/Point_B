PointB::Application.routes.draw do

  resources :comments

  # devise_for :users, :path => '', :path_names => {:sign_in => 'login', :sign_out => 'logout'}

  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }

  devise_scope :user do
   get 'sign_out', :to => 'devise/sessions#destroy', :as => :destroy_user_session
  end

  resources :users do
    resources :destinations
  end
  
  scope :api do
    post 'destinations/:destination_id/posts' => 'destinations#post', :as => :destination_post_api
  end


  devise_scope :user do
    get "/" => "devise/sessions#new"
  end

end
