class User < ActiveRecord::Base
  attr_accessible :name, :password_digest, :password
  has_secure_password
  validates :name, :uniqueness => true, :presence => true
end
