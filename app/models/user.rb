class User < ActiveRecord::Base
  has_one :calendar
  has_many :responses
  has_many :questions, :through => :responses
  has_many :events, :through => :questions

  has_secure_password

  validates :email, :presence => true, :uniqueness => true
end
