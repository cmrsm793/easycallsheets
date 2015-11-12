class AddCallsheetIdToCasts < ActiveRecord::Migration
  def change
    add_column :casts, :callsheets_id, :integer
  end
end
