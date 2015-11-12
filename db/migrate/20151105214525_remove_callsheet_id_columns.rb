class RemoveCallsheetIdColumns < ActiveRecord::Migration
  def change
    remove_column :casts, :callsheet_id 
    remove_column :crews, :callsheet_id
  end
end
