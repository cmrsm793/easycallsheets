class RemoveColumnsUsers < ActiveRecord::Migration
  def change
    remove_column :users, :name 
    remove_column :users, :phone
    remove_column :users, :time_format
    remove_column :users, :country
  end
end
