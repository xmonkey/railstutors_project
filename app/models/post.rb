class Post < ActiveRecord::Base
  has_many :comments
  attr_accessible :title, :url
end
