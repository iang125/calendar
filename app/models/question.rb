class Question < ActiveRecord::Base
  belongs_to :event
  belongs_to :response

  if self.response.atending = false
    self.delete
  end
end
