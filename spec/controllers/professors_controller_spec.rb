require 'spec_helper'

describe MoviesController do
  describe 'Find Movies With Same Director' do
    it 'when I follow "Find Movies With Same Director", it should render a new view with results' do
      movie = mock('Movie', :title => 'New Movie', :director => 'Jacob Skinner')
      fake_results = [mock('Movie'), mock('Movie')]
      Movie.should_receive(:find).with('1').and_return(movie)
      Movie.should_receive(:movies_with_current_director).with(movie).and_return(fake_results)
      get :samedirector, {:id => '1'}
      response.should render_template('samedirector')
    end
    it 'should stay on current movie page and display a message if movie does not have a director' do
      movie = mock('Movie', :title => 'New Movie', :director => nil)
      Movie.should_receive(:find).with('1').and_return(movie)
      get :samedirector, {:id => '1'}
      response.should redirect_to(movie_path(movie))
    end
  end

  describe 'Delete Movie' do
    it 'should delete a movie' do
      movie = mock('Movie', :title => 'Update Movie')
      Movie.should_receive(:find).with('1').and_return(movie)
      movie.should_receive(:destroy)
      delete :destroy, {:id => '1'}
      response.should redirect_to(movies_path)
    end
  end
end

