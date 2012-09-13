class Task < ActiveRecord::Base
  attr_accessible :deadline, :description, :key, :name, :priority, :status
end
