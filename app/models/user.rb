class User < ActiveRecord::Base

  belongs_to :zone
  has_many :responses
  has_many :events, :through => :responses

  geocoded_by :address
  after_validation :geocoded, :if => :address_changed?

  has_secure_password

  validates :email, :presence => true, :uniqueness => true
end
