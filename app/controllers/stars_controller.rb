class StarsController < ApplicationController

  def index
    @user = current_user
    Star
  end

  def new
  end

  def create
    @destination = Destination.find(params[:destination_id])
    user = current_user
    @star = Star.new(star_params)
    @star.user_id = user.id
    @star.destination_id = @destination.id
    respond_to do |format|
      if @star.save
        format.html { redirect_to user_destination_path user, @destination }
        format.js { render layout: false }
        format.json { head :no_content }
      else
        format.html { redirect_to user_destination_path user, destination, notice: 'Sorry, could not star destination' }
      end
    end
  end

  def delete
  end

  private

  def star_params
      params.permit(:user_id, :destination_id)
    end
end
