require 'test_helper'

class TaskTest < ActiveSupport::TestCase

  test "should accepts a valid Task" do
    task = Task.new(:key => 'Task-10', :name => 'Task Ten', :priority => 1)
    task.save!
  end

  test "should reject an invalid built Task" do
    task = Task.new
    assert task.invalid?
    assert task.errors[:key].any?
    assert task.errors[:name].any?
    assert task.errors[:priority].any?
  end

end
