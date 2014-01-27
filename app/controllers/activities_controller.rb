class ActivitiesController < ApplicationController
  layout 'activities'

  def index
    @user = current_user
    @users = User.all
    @friendship = Friendship.all
    @activities = PublicActivity::Activity.order("created_at desc").where(owner_id: current_user.friend_ids, owner_type: "User")

    respond_to do |format|
        format.html
        format.js { render layout: false }
        format.json { render :json => @activities.to_json }
      end
  end
end
