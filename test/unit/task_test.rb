require 'test_helper'

class TaskTest < ActiveSupport::TestCase

  test "should accepts a valid Task" do
    task = Task.new(:description => 'This is a test task', :priority => 1)
    task.save!
  end

  test "should reject an invalid built Task" do
    task = Task.new
    assert task.invalid?
    assert task.errors[:priority].any?
  end

end
