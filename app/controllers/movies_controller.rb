class MoviesController < ApplicationController
	def show
	  @movie = Movie.find(params[:id])
	   @fans = @movie.fans
	end

	def index
		@movies = Movie.all
	end
end
