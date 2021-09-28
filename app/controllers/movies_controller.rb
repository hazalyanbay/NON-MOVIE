class MoviesController < ApplicationController
	
	def show
  	  @movie = Movie.find(params[:id])
      @genres = @movie.genres
      if current_user
        @favorite = current_user.favorites.find_by(movie_id: @movie.id)
      end
	end

	def index
		@movies = Movie.all
	end
end
