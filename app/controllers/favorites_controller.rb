class FavoritesController < ApplicationController
	

	def create
  	  @movie = Movie.find(params[:movie])
      @movie.favorites.create!(user: current_user)
    
      redirect_to @movie
	end

	 def comment_params
   	   params.require(:movie).permit(:title, :description, :movie_length, :director, :rating )
     end
end

