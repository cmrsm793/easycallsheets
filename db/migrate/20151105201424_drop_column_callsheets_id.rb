class DropColumnCallsheetsId < ActiveRecord::Migration
  def change
    remove_column :casts, :callsheets_id, :integer
    remove_column :crews, :callsheets_id, :integer
    add_column :casts, :callsheet_id, :integer
    add_column :crews, :callsheet_id, :integer
  end
end
