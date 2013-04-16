class HomeController < ApplicationController
  def show	   
  end

  def about
  end
  def invite
  end

  def sendinvite
	@email = params[:email]["email"].split(",").each do |email|
	  MyMailer.welcome(email).deliver
	end
	flash[:notice] = "Invite(s) Sent!"
	redirect_to "/home"
  end

end
