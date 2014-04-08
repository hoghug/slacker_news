class PostsController < ApplicationController
  def index
    @posts = Post.all

    @post = Post.new
    @comment = Comment.new
    @vote = Vote.new
  end

  def create
   @post = Post.new post_params
   if @post.save
    flash[:notice] = "Post Created"
    redirect_to '/'
   else
    flash[:notice] = "Post Creation Error."
    render '/'
   end
  end
end
