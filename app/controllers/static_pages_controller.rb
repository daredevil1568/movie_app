class StaticPagesController < ApplicationController
  def home
  	@movies = Movie.paginate(page: params[:page], :per_page => 5)
  end

  def help
  end

  def about
  end

  def contact
  end
end
