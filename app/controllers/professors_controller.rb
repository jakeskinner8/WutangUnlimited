class ProfessorsController < ApplicationController
  def index
	@professors = Professor.all
  end

  def show
	@professors = Professor.all
	@selected = Professor.find(params[:id])
        temp = Professor.find(:all,:order=>'winpercentage desc')
        i = 0
	@ranked = -1
	temp.each do |x|
		i = i + 1
		if x == @selected
			@ranked = i
		end
	end
	
  end
end
