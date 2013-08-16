class User < ActiveRecord::Base
  has_one :calendar
  has_many :responses
  has_many :questions, :through => :responses
  has_many :events, :through => :questions
end
