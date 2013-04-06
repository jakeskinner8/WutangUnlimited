class ProfessorsController < ApplicationController
  def bios
	@professors = Professor.all
  end
end
