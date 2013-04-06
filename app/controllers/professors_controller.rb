class ProfessorsController < ApplicationController
  def bios
	@professors = Professor.all
  end

  def show
  end
end
