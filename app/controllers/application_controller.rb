class ApplicationController < ActionController::Base

  include PublicActivity::StoreController

  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.

  protect_from_forgery with: :exception

  before_action :authenticate_user!

  before_action :configure_permitted_parameters, if: :devise_controller?

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  helper_method :current_user
  hide_action :current_user

  def after_sign_in_path_for(user)
    params[:target] || user_path(user.id)
  end

  protected

  def configure_permitted_parameters
    [:name, :profile_pic, :bio, :location].each do |field|
      devise_parameter_sanitizer.for(:sign_up) << field
      devise_parameter_sanitizer.for(:account_update) << field
    end
  end
end
