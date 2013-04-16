class HomeController < ApplicationController
  def show	   
  end

  def invite
  end

  def sendinvite
	@email = params[:email]["email"]
	MyMailer.welcome(@email).deliver
	flash[:notice] = "Invite(s) Sent!"
	redirect_to "/home"
  end

end
