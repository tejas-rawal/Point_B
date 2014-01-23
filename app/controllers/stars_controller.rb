class StarsController < ApplicationController

  def index
    @user = current_user
    @stars = @user.stars.all
  end

  def new
    @user = current_user

  end

  def create
  end

  def delete
  end
end
