class PostsController < ApplicationController
  def index
    @user = User.find(params[:user_id])
    @posts = Post.find(:all, :order => 'ranking').reverse
    #@posts = posts_in_order

    @post = Post.new
    @comment = Comment.new
    @vote = Vote.new
  end

  def create

   @user = User.find(params[:user_id])
   @post = @user.posts.new(post_params)

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
      params.require(:post).permit(:title, :link, :date, :ranking, :user_id)
    end
end
