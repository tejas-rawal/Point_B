class DestinationsController < ApplicationController
  before_action :set_destination, only: [:show, :edit, :update, :destroy]

  # GET /trips
  # GET /trips.json
  def index
    @destinations = Destination.all
  end

  # GET /destinations/1
  # GET /destinations/1.json
  def show
    @user = User.find(params[:user_id])
    @post = @destination.posts(post_params)
    @comment = Comment.new
  end

  def post
    current_user
    @destination = current_user.destinations.find(params[:destination_id])
    new_post = @destination.posts.create(post_params)
    new_post.destination_id = params[:destination_id]
    render :json => new_post.to_json, :status => 200
  end

  # GET /destinations/new
  def new
    @destination = Destination.new
    @user = User.find(params[:user_id])
  end

  # GET /destinations/1/edit
  def edit
  end

  # POST /destinations
  # POST /destinations.json
  def create
    @user = User.find(params[:user_id])
    @destination = Destination.new(destination_params)
    @destination.user_id = params[:user_id]
    if @destination.save
      redirect_to user_destination_path(@user.id, @destination.id)
    else
      redirect_to root_path
    end
  end

  # PATCH/PUT /destinations/1
  # PATCH/PUT /destinations/1.json
  def update
    @user = User.find(params[:user_id])
    respond_to do |format|
      if @destination.update(destination_params)
        format.html { redirect_to user_destination_path(@user.id, @destination.id), notice: 'destination was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @destination.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /destinations/1
  # DELETE /destinations/1.json
  def destroy
    @destination.destroy
    @user = User.find(params[:user_id])
    respond_to do |format|
      format.html { redirect_to user_path(@user) }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_destination
      @destination = Destination.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def destination_params
      params.require(:destination).permit(:city, :country, :description, :album, :category, :user_id, :post_id)
    end

    def post_params
      params.permit(:activity, :description, :external_links, :images, :destination_id)
    end
end