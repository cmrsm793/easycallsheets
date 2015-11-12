class AddCallsheetIdToCrews < ActiveRecord::Migration
  def change
     add_column :crews, :callsheets_id, :integer
  end
end
