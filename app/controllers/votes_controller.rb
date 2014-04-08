class VotesController < ApplicationController
  def create
   @vote = Vote.new vote_params
   if @vote.save
    flash[:notice] = "Welcome to the slacker news."
    redirect_to '/'
   else
    flash[:notice] = "Vote Creation Error."
    redirect_to '/'
   end
  end
end
