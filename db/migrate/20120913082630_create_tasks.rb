class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :key
      t.string :name
      t.text :description
      t.integer :priority
      t.date :deadline
      t.string :status

      t.timestamps
    end
    add_index :tasks, :key, :unique => true
  end
end
