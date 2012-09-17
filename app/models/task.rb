class Task < ActiveRecord::Base
  attr_accessible :deadline, :description, :priority, :status

  validates :description, :priority, presence: true
end
