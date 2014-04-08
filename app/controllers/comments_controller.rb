class CommentsController < ApplicationController
  def index
    @user = User.find(params[:user_id])
    @post = Post.find(params[:post_id])
    @comments = Comment.where(post_id: @post.id)
  end

  def create
   @comment = Comment.new comment_params
   if @comment.save
    flash[:notice] = "Welcome to the slacker news."
    redirect_to '/'
   else
    flash[:notice] = "Comment Creation Error."
    redirect_to '/'
   end
  end

  private
    def comment_params
      params.require(:comment).permit(:message, :user_id, :post_id)
    end
end
