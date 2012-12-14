class Post < ActiveRecord::Base
  has_many :comments
  has_many :votes
  belongs_to :user
  attr_accessible :title, :url
  validates :title, :presence => true
  validates :url, :presence => true
  def votes_count
    votes.where(:upvote => true).count - votes.where(:upvote => false).count
  end
end
