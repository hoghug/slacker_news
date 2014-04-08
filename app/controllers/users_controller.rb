class UsersController < ApplicationController
  def index
    @users = User.all
    @user = User.new
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
end
