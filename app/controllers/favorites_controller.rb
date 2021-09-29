class FavoritesController < ApplicationController
	

	def create
  	  @movie = Movie.find(params[:movie])
  	  @genre = Genre.find(params[:genre])
  	  @actor = Actor.find(params[:actor])
      @movie.favorites.create!(user: current_user)
      @genre.favorites.create!(user:current_user)
      @actor.favorites.create!(user:current_user)
    
      redirect_to @movie
	end

	 def comment_params
   	   params.require(:movie).permit(:title, :description, :movie_length, :director, :rating )
     end
end

