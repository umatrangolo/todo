class Task < ActiveRecord::Base
  attr_accessible :deadline, :description, :priority, :status
  validates :description, presence: true
  validates :priority, numericality: { :greater_than_or_equal_to => 0, :less_than_or_equal_to => 5 }, presence: true
  validates :deadline, presence: true
  validates :status, presence: true, :inclusion => { :in => %w(Open InProgress Done), :message => "%{value} is not a valid state" }
end
