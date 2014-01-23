class PostsController < ApplicationController

  def show
    @post = Post.find(params[:post_id])
    @comment = Comment.new
    @comments = Comment.all
  end
end
