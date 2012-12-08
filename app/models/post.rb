class Post < ActiveRecord::Base
  has_many :comments
  has_many :votes
  attr_accessible :title, :url
  def votes_count
    votes.where(:upvote => true).count - votes.where(:upvote => false).count
  end
end
