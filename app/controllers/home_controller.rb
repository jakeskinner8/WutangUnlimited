class HomeController < ApplicationController
  def show 
    @teacherOfMonth = Professor.find(:all,:order=>'winpercentage desc').take(1)
    @top5professors = Professor.find(:all,:order=>'winpercentage desc').take(5)
    @top5courses = Course.find(:all,:order=>'winpercentage desc').take(5)

   
    @randomquestion = Question.find(:all,:order=>'RANDOM()', :limit => 1)
    @answer = Answer.find_all_by_Question_id(@randomquestion)
    if params[:id] != nil
      total = Question.find(params[:id]).total + 1
      totalpoll = Userpollresult.find(params[:Answer_id]).totalpoll + 1
      Question.find(params[:id]).update_attributes(:total=>total)
      Userpollresult.find(params[:Answer_id]).update_attributes(:totalpoll=>totalpoll)
      flash[:notice] = "#{totalpoll} out of #{total} people answered #{params[:realanswer]} to the question: #{params[:realquestion]}."
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

    def generalhistoryprofessors
	if(params[:sort].to_s == "name") 
		@top5 = Professor.find(:all,:order=>'last_name asc')
	elsif(params[:sort].to_s == "wins") 
		@top5 = Professor.find(:all,:order=>'wins desc')
	elsif(params[:sort].to_s == "appearances") 
		@top5 = Professor.find(:all,:order=>'appearances desc')
	else
		@top5 = Professor.find(:all,:order=>'winpercentage desc')
	end
  end

  def generalhistoryclasses
	if(params[:sort].to_s == "name") 
		@top5 = Course.find(:all,:order=>'course_name asc')
	elsif(params[:sort].to_s == "wins") 
		@top5 = Course.find(:all,:order=>'wins desc')
	elsif(params[:sort].to_s == "appearances") 
		@top5 = Course.find(:all,:order=>'appearances desc')
	else
		@top5 = Course.find(:all,:order=>'winpercentage desc')
	end
  end
end
