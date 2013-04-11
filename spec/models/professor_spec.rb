require 'spec_helper'


describe Professor do
  describe 'Get random professors' do
    it 'should search for random professor' do
      professor = mock('Professor', :email => 'jacob@uiowa.edu')
      fake_results = [mock('Professor'), mock('Professor')]
    end
   end
end
