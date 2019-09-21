class AddSubTaskToTasks < ActiveRecord::Migration[6.0]
  def change
    add_column :tasks, :sub_task, :string
  end
end
