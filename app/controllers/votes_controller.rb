class VotesController < ApplicationController
  def index
	@random = Professor.all(:order=>'RANDOM()', :limit => 2)

  end	

  def show
	flash[:notice] = "You voted for #{Professor.find(params[:id]).first_name}  #{Professor.find(params[:id]).last_name}." 
	flash.keep
	redirect_to votes_path
  end

end
