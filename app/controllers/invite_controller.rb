class InviteController < ApplicationController
  before_filter :set_current_user
  def set_current_user
    @current_use = user_signed_in? 
    if(!@current_use)
	flash[:notice] = "You must be logged in to view this page."
    else
	@current_use = current_user.email
    end
	
    redirect_to '/home' and return unless @current_use
  end 
  def sendinvite
	@email = params[:email]["email"].split(",").each do |email|
	  MyMailer.welcome(email,@current_use).deliver
	end
	flash[:notice] = "Invite(s) Sent!"
	redirect_to "/home"
  end
end
