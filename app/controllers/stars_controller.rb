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

  private

  def star_params
      params.require(:star).permit(:user_id, :destination_id)
    end
end
