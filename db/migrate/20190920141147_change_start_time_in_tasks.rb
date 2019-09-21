class ChangeStartTimeInTasks < ActiveRecord::Migration[6.0]
  def change
    change_column :tasks, :start_time, :date
    change_column :tasks, :end_time, :date
  end
end
