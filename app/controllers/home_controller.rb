class HomeController < ApplicationController
  def show
    @top5professors = Professor.find(:all,:order=>'winpercentage desc').take(5)
    @top5courses = Course.find(:all,:order=>'winpercentage desc').take(5)
    if session["question"] ==  nil
    	@randomquestion = Question.find(:all,:order=>'RANDOM()', :limit => 1)
   	@answer = Answer.find_all_by_Question_id(@randomquestion)
        session["question"] = @randomquestion
    else
        @randomquestion = session["question"]
        @answer = Answer.find_all_by_Question_id(@randomquestion)
    end
  end
  def about
  end
  def invite
  end
  def teachers
    
  end
  def faveclass
  end
  def question
  end
end
