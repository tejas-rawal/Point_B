class PostsController < ApplicationController

  def show
    @post = Post.find(params[:post_id])
    @comment = Comment.new
    @comments = Comment.all
  end

  def new
    @post = Post.new

    respond_to do |format|
      format.html
      format.json { render json: @post}
  end

  def create
    @post = Post.new(post_params)

    respond_to do |format|
      if @post.save
        format.html { render :json => [@post.images.to_jq_upload].to_json,
          :content_type => 'text/html',
          :layout => false
        }
        format.json { render json: {files: [@post.images.to_jq_upload]}, status: :created, location: @post }
      else
        format.html { render action: "new" }
        format.json { render json: @post.errors, status: :unprocessable_entity }

  def edit
    @post = Post.find(params[:post_id])
  end

  def update
    @post = Post.find(params[:post_id])

    respond_to do |format|
      if @post.update_attributes(post_params)
        format.html { redirect_to @post.destination}
        format.json { head: no_content }
      else
        format.html { render action: 'edit'}
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  def post_params
    params.permit(:thing, :description, :external_links, :images, :destination_id)
  end
end
