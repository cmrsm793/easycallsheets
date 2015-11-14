class RemoveColumn < ActiveRecord::Migration
  def change
    remove_column :casts, :schedule_id
    remove_column :crews, :schedule_id
  end
end
