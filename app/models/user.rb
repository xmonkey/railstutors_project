class User < ActiveRecord::Base
  attr_accessible :name, :password
  has_secure_password
  validates :name, :uniqueness => true, :presence => true
  has_many :posts
  has_many :comments
  has_many :votes

  def recent(activities)
    activities.order("created_at DESC").limit(5)
  end

end
