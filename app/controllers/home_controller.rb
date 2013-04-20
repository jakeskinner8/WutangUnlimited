class HomeController < ApplicationController
  def show
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
  def faveprof
  end
  def faveclass
  end
  def question
  end
end
