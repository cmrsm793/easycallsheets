class DropCallsheets < ActiveRecord::Migration
  def change
    drop_table :callsheets
  end
end
