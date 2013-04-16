class HomeController < ApplicationController
  def show	   
  end

  def invite
	MyMailer.welcome('jacob-skinner@uiowa.edu').deliver
	flash[:notice] = "Invite(s) Sent!"
	redirect_to "/home"
  end

end
