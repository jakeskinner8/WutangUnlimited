require 'spec_helper'


describe Professor do
  describe 'Get random professors' do
    it 'should search for random professor' do
      professor = mock('Movie', :director => 'Jacob Skinner')
      Movie.should_receive(:find).with('1').and_return(movie)
      fake_results = [mock('Movie'), mock('Movie')]
      Movie.should_receive(:find_all_by_director).with('Jacob Skinner').and_return(fake_results)
      Movie.movies_with_current_director('1')
    end
   end
end
		@random = Professor.find(:all,:order=>'RANDOM()', :limit => 2)
		@question = Course.find(:all,:order=>'RANDOM()', :limit => 1)
