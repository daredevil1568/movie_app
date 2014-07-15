class StaticPagesController < ApplicationController
  def home
  	@movies = Movie.paginate(page: params[:page])
  end

  def help
  end

  def about
  end

  def contact
  end
end
