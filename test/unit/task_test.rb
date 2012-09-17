require 'test_helper'

class TaskTest < ActiveSupport::TestCase

  test "should accepts a valid Task" do
    task = Task.new(:description => 'This is a test task', :priority => 1, :deadline => Time.now, :status => 'Open')
    task.save!
  end

  test "should reject an invalid built Task" do
    task = Task.new
    assert task.invalid?
    assert task.errors[:priority].any?
  end

  test "should reject a negative priority" do
    task = Task.new(:deadline => Time.now(), :description => 'This is a description', :priority => -1, :status => 'Open')
    assert task.invalid?
    assert task.errors[:priority].any?
  end

  test "should reject a priority greater than 5" do
    task = Task.new(:deadline => Time.now(), :description => 'This is a description', :priority => 10, :status => 'Open')
    assert task.invalid?
    assert task.errors[:priority].any?
  end

  test "should reject an invalid status" do
    task = Task.new(:deadline => Time.now(), :description => 'This is a description', :priority => 10, :status => 'Invlid')
  end
end
