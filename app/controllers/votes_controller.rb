class VotesController < ApplicationController
  def index
	@random = Professor.all(:order=>'RANDOM()', :limit => 2)
  end

end
