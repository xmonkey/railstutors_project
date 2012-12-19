class Post < ActiveRecord::Base
  has_many :comments
  has_many :votes
  belongs_to :user
  belongs_to :node
  attr_accessible :title, :url, :node_name
  validates :title, :presence => true
  validates :url, :presence => true
  def votes_count
    votes.where(:upvote => true).count - votes.where(:upvote => false).count
  end

  def node_name
    node.name if self.node
  end

  def node_name=(name)
    self.node =Node.find_or_create_by_name(name) unless name.blank?
  end

end
