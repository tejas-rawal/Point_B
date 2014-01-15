PointB::Application.routes.draw do

  resources :comments

  devise_for :users, :path => '', :path_names => {:sign_in => 'login', :sign_out => 'logout'}

  scope :api do
    post 'destinations/:destination_id/posts' => 'destinations#post', :as => :destination_post_api
  end

  resources :users do
    resources :destinations
  end

  devise_scope :user do
    get "/" => "devise/sessions#new"
  end

end
