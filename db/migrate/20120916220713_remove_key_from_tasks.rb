class RemoveKeyFromTasks < ActiveRecord::Migration
  def up
    remove_column :tasks, :key
  end

  def down
    add_column :tasks, :key, :string
  end
end
