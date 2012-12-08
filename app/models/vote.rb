class Vote < ActiveRecord::Base
  belongs_to :post
  attr_accessible :upvote
end
