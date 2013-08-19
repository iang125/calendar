class User < ActiveRecord::Base
  has_one :calendar
  has_many :responses
  has_many :events, :through => :responses

  has_secure_password

  validates :email, :presence => true, :uniqueness => true
end
