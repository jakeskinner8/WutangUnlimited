require 'spec_helper'

describe VotesController do
  describe 'Trying to vote without being logged in' do
    it 'should redirect home page' do
	visit "/votes"
	page.should have_content "Teacher of The Month"
	#response.should redirect_to(home_show_path)
      
    end
  end
end
