class UsersController < ApplicationController
  def index
    @users = User.all
    @user = User.new
    @posts = Post.all
  end

  def create
   @user = User.new user_params
   if @user.save
    flash[:notice] = "Welcome to the slacker news."
    redirect_to '/'
   else
    flash[:notice] = "User Creation Error."
    render :new
   end
  end

  def show
    @user = User.find(params[:id])
    # @posts = Post.all
    @post = Post.new
    @comment = Comment.new
    @vote = Vote.new

    render '/posts/index.html.erb'
  end

  private
    def user_params
      params.require(:user).permit(:name)
    end
end
