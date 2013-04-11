require 'spec_helper'

describe VotesController do
  describe 'Trying to vote without being logged in' do
    it 'should redirect home page' do
	visit "/votes"
	page.should have_content "Teacher of The Month"
    end
  end

  describe 'Voting while logged in' do
    it 'should say Signed in' do
      user = mock('User')
      user.stub!(:email).and_return('Duy@uiowa.edu')
      user.stub!(:password).and_return('wutang')
      User.should_receive(:create!).and_return(user)
     # visit "/votes"
     # page.should have_content "Teacher of The Month"
    end
  end
end
