class Event < ActiveRecord::Base

  belongs_to :user
  has_one :type
  has_many :attendees

  def host
    User.find_by_id(self.user_id)
  end



end
