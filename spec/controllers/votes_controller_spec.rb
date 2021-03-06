require 'spec_helper'

describe VotesController do
  include Devise::TestHelpers

  before (:each) do
    user = double('user')
    request.env['warden'].stub :authenticate! => user
    controller.stub :current_user => user
  end

  describe "GET 'index'" do
    it "should be successful" do
      get 'index'
      response.should be_success
    end
  end

  describe 'Trying to vote without being logged in' do
    it 'should redirect home page' do
	#page.should have_content "Teacher of The Month"
    end
  end
end
