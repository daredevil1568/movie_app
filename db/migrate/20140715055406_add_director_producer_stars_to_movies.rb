class AddDirectorProducerStarsToMovies < ActiveRecord::Migration
  def change
  	add_column :movies, :director ,:string
  	add_column :movies, :writers , :string
  	add_column :movies, :stars, :text
  end
end
