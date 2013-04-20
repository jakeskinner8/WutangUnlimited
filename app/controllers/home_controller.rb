class HomeController < ApplicationController
  def show
  end
  def about
  end
  def invite
  end
  def teachers
    @top5 = Professor.find(:all,:order=>'winpercentage desc').take(5)
  end
  def faveclass
  end
  def question
  end
end
