class PostsController < ApplicationController
  def index
    @user = User.find(params[:user_id])
    @posts = Post.all

    @post = Post.new
    @comment = Comment.new
    @vote = Vote.new
  end

  def create
   @post = Post.new post_param
   if @post.save
    flash[:notice] = "Post Created"
    redirect_to '/'
   else
    flash[:notice] = "Post Creation Error."
    render '/'
   end
  end

  private
    def post_params
      params.require(:post).permit(:title, :link, :date)
    end
end
