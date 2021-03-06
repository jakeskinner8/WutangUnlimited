class VotesController < ApplicationController
  before_filter :set_current_user
  def set_current_user
    @current_use = user_signed_in? 
    if(!@current_use)
	flash[:notice] = "You must be logged in to view this page."
	redirect_to '/home' and return
    end
   
  end 

  def index
	if(session[:votingOn] != "Classes" || session[:votingOn] == nil)
		session[:votingOn] = "Teachers"
		@random = Professor.find(:all,:order=>'RANDOM()', :limit => 2)
		while @random[0].id == @random[1].id do
			@random = Professor.find(:all,:order=>'RANDOM()', :limit => 2)
		end
		@question = Pquestion.find(:all,:order=>'RANDOM()', :limit => 1)
        else
		@random = Course.find(:all,:order=>'RANDOM()', :limit => 2)
		@question = Cquestion.find(:all,:order=>'RANDOM()', :limit => 1)
	end
  end	

  def show
	if(params[:id].to_s == "S")
		flash[:notice] = "You skipped the previous question."
	else
		if(session[:votingOn].to_s == "Teachers")
		  wins = Professor.find(params[:id]).wins + 1
		  appearances = Professor.find(params[:id]).appearances + 1
		  winpercentage = wins.to_f / appearances.to_f * 100
		  Professor.find(params[:id]).update_attributes(:wins=>wins ,:appearances=>appearances,:winpercentage=>winpercentage)
		  exists = Pvote.find_by_professor_id_and_pquestion_id(params[:id],params[:question])
		  if exists.nil?
		    Pvote.create!(:professor_id=>params[:id], :pquestion_id=>params[:question],:wins=>1,:appearances=>1,:winpercentage=>100.0)		
		  else
		    wins = exists[:wins] + 1
		    appearances = exists[:appearances] + 1
      		    winpercentage = wins.to_f / appearances.to_f * 100
		    Pvote.find_by_professor_id_and_pquestion_id(params[:id],params[:question]).update_attributes(:wins=>wins, :appearances=>appearances,:winpercentage=>winpercentage)
		  end
		
		  wins = Professor.find(params[:loser]).wins
		  appearances = Professor.find(params[:loser]).appearances + 1
		  winpercentage = wins.to_f / appearances.to_f * 100
		  Professor.find(params[:loser]).update_attributes(:appearances=>appearances,:winpercentage=>winpercentage)
		  exists = Pvote.find_by_professor_id_and_pquestion_id(params[:loser],params[:question])
		  if exists.nil?
		    Pvote.create!(:professor_id=>params[:loser], :pquestion_id=>params[:question],:wins=>0,:appearances=>1,:winpercentage=>0.00)
		  else
		    wins = exists[:wins]
		    appearances = exists[:appearances] + 1
                    winpercentage = wins.to_f / appearances.to_f * 100
		    Pvote.find_by_professor_id_and_pquestion_id(params[:loser],params[:question]).update_attributes(:appearances=>appearances,:winpercentage=>winpercentage)
		  end		
		  flash[:notice] = "You voted for #{Professor.find(params[:id]).first_name}  #{Professor.find(params[:id]).last_name}." 
		else
                
		  wins = Course.find(params[:id]).wins + 1
		  appearances = Course.find(params[:id]).appearances + 1
		  winpercentage = wins.to_f / appearances.to_f * 100
		  Course.find(params[:id]).update_attributes(:wins=>wins ,:appearances=>appearances,:winpercentage=>winpercentage)
		  exists = Cvote.find_by_course_id_and_cquestion_id(params[:id],params[:question])
		  if exists.nil?
		    Cvote.create!(:course_id=>params[:id], :cquestion_id=>params[:question],:wins=>1,:appearances=>1, :winpercentage=>100.0)		
		  else
		    wins = exists[:wins] + 1
		    appearances = exists[:appearances] + 1
                    winpercentage = wins.to_f / appearances.to_f * 100
		    Cvote.find_by_course_id_and_cquestion_id(params[:id],params[:question]).update_attributes(:wins=>wins, :appearances=>appearances,:winpercentage=>100.0)
		  end
		
		  wins = Course.find(params[:loser]).wins
		  appearances = Course.find(params[:loser]).appearances + 1
		  winpercentage = wins.to_f / appearances.to_f * 100
		  Course.find(params[:loser]).update_attributes(:appearances=>appearances,:winpercentage=>winpercentage)
		  exists = Cvote.find_by_course_id_and_cquestion_id(params[:loser],params[:question])
		  if exists.nil?
		    Cvote.create!(:course_id=>params[:loser], :cquestion_id=>params[:question],:wins=>0,:appearances=>1,:winpercentage=>0)
		  else
                    wins = exists[:wins] 
		    appearances = exists[:appearances] + 1
                    winpercentage = wins.to_f / appearances.to_f * 100
		    Cvote.find_by_course_id_and_cquestion_id(params[:loser],params[:question]).update_attributes(:appearances=>appearances,:winpercentage=>winpercentage)
		  end		
		  flash[:notice] = "You voted for #{Course.find(params[:id]).course_name}."
		end
	end
	flash.keep
	redirect_to votes_path
  end

  def teachers
	session[:votingOn] = "Teachers"
	redirect_to votes_path
  end

  def classes
	session[:votingOn] = "Classes"
	redirect_to votes_path
  end
  def history
    
  end


  def topProfs
    
  end
end
