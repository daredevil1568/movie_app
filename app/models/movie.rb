class Movie < ActiveRecord::Base
  attr_accessible :content, :name,:director ,:writers, :stars


  has_many :reviews, dependent: :destroy
  validates :name, presence: true, length: {maximum: 100}
  validates :content, presence: true, length:{maximum: 1000}
  validates :director, presence: true, length: {maximum: 100}
  validates :writers, presence: true, length:{maximum: 100}
  validates :stars, presence: true, length: {maximum: 200}
  
  #default_scope order: 'movie.created_at DESC'
end
