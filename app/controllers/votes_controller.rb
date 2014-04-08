class VotesController < ApplicationController
  def create
    # @user = User.find(params[:user_id])
    # @post = @user.posts.find(params[:post_id])

    @vote = Vote.new vote_params

    if @vote.save
    flash[:notice] = "hehe.. thank you..."
    @post = Post.find(params[:post_id])
    @post.update(ranking: (@post.ranking + @vote.anarchy))
    redirect_to '/'
    else
    flash[:notice] = "Vote Creation Error."
    redirect_to '/'
    end
  end

  private
    def vote_params
      params.require(:vote).permit(:anarchy, :user_id, :post_id)
    end
end
