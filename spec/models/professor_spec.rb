require 'spec_helper'


describe Professor do
  describe 'Get random professors' do
    it 'should search for random professor' do
      professor = mock('Professor')
      Professor.should_receive(:find, :all, :order=>'RANDOM()', :limit => 2).and_return(professor)
    end
   end
end
