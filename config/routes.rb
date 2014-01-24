PointB::Application.routes.draw do

  devise_scope :user do
    get "/" => "devise/sessions#new"
  end

  devise_for :users, :controllers => { :omniauth_callbacks => "omniauth_callbacks" }

  resources :users do
    resources :destinations
  end

  get '/stars' => 'stars#index', :as => :all_stars
  post 'destinations/:destination_id/stars' => 'stars#create', :as => :star_post

  resources :friendships
  resources :comments
  resources :activities

  scope :api do
    post 'destinations/:destination_id/posts' => 'destinations#post', :as => :destination_post_api
  end
end
