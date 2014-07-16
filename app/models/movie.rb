class Movie < ActiveRecord::Base
  attr_accessible :content, :name,:director ,:writers, :stars , :photo

  
  has_many :reviews, dependent: :destroy
  validates :name, presence: true, length: {maximum: 100}
  validates :content, presence: true, length:{maximum: 1000}
  validates :director, presence: true, length: {maximum: 100}
  validates :writers, presence: true, length:{maximum: 100}
  validates :stars, presence: true, length: {maximum: 200}
  



has_attached_file :photo, :styles => { :small => "150x150>" },
                  :url  => "/assets/movies/:id/:style/:basename.:extension",
                  :path => ":rails_root/public/assets/movies/:id/:style/:basename.:extension",
                  :default_url => ActionController::Base.helpers.asset_path('missing.jpeg')

validates_attachment_presence :photo
validates_attachment_size :photo, :less_than => 5.megabytes
validates_attachment_content_type :photo, :content_type => ['image/jpeg', 'image/png']
  #default_scope order: 'movie.created_at DESC'
end
