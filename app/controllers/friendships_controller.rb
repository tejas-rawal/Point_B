class FriendshipsController < ApplicationController
  def new
    @friendship = Friendship.new
  end


  def create
    @user = current_user
    @friendship = current_user.friendships.build(:friend_id => params[:friend_id])

    if @friendship.save
      redirect_to @user, :notice => "You have a new Friend!"
    else
      redirect_to @user, :error => "Friendship FAIL!"
    end
  end

  def destroy
    @friendship = current_user.friendships.find(params[:id])
    @friendship.destroy
    redirect_to current_user, :notice => "Friendship OVER!"
  end


end