class AddReleasedateToMovies < ActiveRecord::Migration
  def change
    add_column :movies, :releasedate, :date
  end
end
