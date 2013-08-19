class Event < ActiveRecord::Base
  has_one :type
  has_many :question
  has_many :responses, :through => :question

  def host
    User.find_by_id(self.user_id)
  end
end
