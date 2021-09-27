class FavoritesController < ApplicationController
	
	def create
  	  @movie = Movie.find(params[:movie_id])
      @movie.favorites.create!(user: current_user)
    
      redirect_to @movie
	end
end
