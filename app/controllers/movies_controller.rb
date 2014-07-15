class MoviesController < ApplicationController

def show
@movie=Movie.find(params[:id])
@new_review = @movie.reviews.build
@reviews=@movie.reviews.paginate(page: params[:page])

end

def index
@movies = Movie.paginate(page: params[:page])
end

 def new
 	@movie=Movie.new
 end

 def create
 	@movie=Movie.new(params[:movie])
 	if @movie.save
 		flash[:success] = "Movie Added!!!"
 		redirect_to @movie
 	else
 		render 'new'
 	end
 end
end
