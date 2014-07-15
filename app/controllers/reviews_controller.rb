class ReviewsController < ApplicationController
  
  before_filter :signed_in_user, only: [:create, :destroy]

  def index
  	@review = Review.all
  end

  def create
  	@review = current_user.reviews.build(params[:review])

    if @review.save
      flash[:success] = "Review created!"
      redirect_to movie_path(@review.movie)
    else
      render @movie
    end
  end

  def destroy
  	@review = Review.find(params[:id])
  	user=@review.user;
  	@review.destroy
  	redirect_to user_path(user)
  end
end