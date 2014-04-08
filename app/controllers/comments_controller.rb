class CommentsController < ApplicationController
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
end
