class Event < ActiveRecord::Base
  has_many :responses

  belongs_to :host, class_name: User, foreign_key: :user_id

  # def host
  #   User.find_by_id(self.user_id)
  #   User.find_by(id:self.user_id)
  # end

end
