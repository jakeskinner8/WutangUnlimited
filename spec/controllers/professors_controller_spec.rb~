require 'spec_helper'

describe ProfessorsController do
  describe 'view page for professor bios' do
    it 'I am on the teachers bio page , it should be loaded' do
      mock = mock('CreateProfessor')
      Professor.should_receive(:all).and_return(mock)
      get :index
      response.should be_success
    end
    it 'I click on professor "onef onel"' do
     mock = mock('CreateProfessor')
     Professor.should_receive(:all).and_return(mock)
     Professor.should_receive(:find).with('3').and_return(mock)
     get :show, {:id => '3'}
     redirect_to(professor_path)
    end
end
end

