class Question < ActiveRecord::Base
  belongs_to :event
  belongs_to :response
end
