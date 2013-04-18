class VotesController < ApplicationController
  before_filter :set_current_user
  def set_current_user
    @current_use = user_signed_in? 
    if(!@current_use)
	flash[:notice] = "You must be logged in to view this page."
    end
   
    redirect_to '/home' and return unless @current_use
  end 

  def index
	if(session[:votingOn] != "Classes" || session[:votingOn] == nil)
		session[:votingOn] = "Teachers"
		@random = Professor.find(:all,:order=>'RANDOM()', :limit => 2)
		@question = Course.find(:all,:order=>'RANDOM()', :limit => 1)
        else
		@random = Course.find(:all,:order=>'RANDOM()', :limit => 2)
		@question = Course.find(:all,:order=>'RANDOM()', :limit => 1)
	end
  end	

  def show
	if(params[:id].to_s == "S")
		flash[:notice] = "You skipped the previous question."
	else
		if(session[:votingOn].to_s == "Teachers")
			flash[:notice] = "You voted for #{Professor.find(params[:id]).first_name}  #{Professor.find(params[:id]).last_name}." 
		else
			flash[:notice] = "You voted for #{Course.find(params[:id]).course_name}." 
		end	
	end
	flash.keep
	redirect_to votes_path
  end

  def teachers
	session[:votingOn] = "Teachers"
	redirect_to votes_path
  end

  def classes
	session[:votingOn] = "Classes"
	redirect_to votes_path
  end
  def history
    
  end
end
