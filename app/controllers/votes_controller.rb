class VotesController < ApplicationController
  def index
	@random = Professor.find(:all,:order=>'RANDOM()', :limit => 2)
	@question = Course.find(:all,:order=>'RANDOM()', :limit => 1)

  end	

  def show
	if(params[:id] != -1)
		flash[:notice] = "You skipped the previous question."
	#elsif(params[:id] != -1)
	#	flash[:notice] = "You voted for #{Professor.find(params[:id]).first_name}  #{Professor.find(params[:id]).last_name}." 
	end
	flash.keep
	redirect_to votes_path
  end

end
