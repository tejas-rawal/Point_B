class CommentsController < ApplicationController

  before_action :set_comment, only: [:show, :edit, :update, :destroy]

  # GET /comments
  # GET /comments.json
  def index
    @comments = Comment.all
  end

  # GET /comments/1
  # GET /comments/1.json
  def show
    @user = User.find(@comment.user_id)
  end

  # GET /comments/new
  def new
    @comment = Comment.new
    @post = Post.find(params[:post_id])
  end

  # GET /comments/1/edit
  def edit
  end

  # comment /comments
  # comment /comments.json
  def create
    post = Post.find(params[:comment][:post_id])
    destination = post.destination
    user = destination.user

    @comment = Comment.new(comment_params)
    @comment.user_id = current_user.id
    respond_to do |format|
      if @comment.save!
        @comment.create_activity :create, owner: current_user
        format.html { redirect_to user_destination_path user, destination, notice: 'Comment successfully created.' }
        format.js { render layout: false }
        format.json { head :no_content }
      else
        format.html { redirect_to user_destination_path user, destination, notice: 'Sorry, comment was not created.' }
      end
    end
  end

  # PATCH/PUT /comments/1
  # PATCH/PUT /comments/1.json
  def update
    respond_to do |format|
      if @comment.update(comment_params)
        format.html { redirect_to @destination, notice: 'comment was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /comments/1
  # DELETE /comments/1.json
  def destroy
    @comment.destroy
    @comment.create_activity :destroy, owner: current_user
    respond_to do |format|
      format.html { redirect_to destination_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_comment
      @comment = Comment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def comment_params
      params.require(:comment).permit(:text, :user_id, :post_id, :destination_id)
    end
end
