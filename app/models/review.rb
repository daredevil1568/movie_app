class Review < ActiveRecord::Base
  attr_accessible :comment, :movie_id, :user_id

   belongs_to :movie
   belongs_to :user
  validates :user_id,presence: true
  validates :movie_id, presence: true
  validates :comment, presence: true
  default_scope order: 'reviews.created_at DESC'
end
