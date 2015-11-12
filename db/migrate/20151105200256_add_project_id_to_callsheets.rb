class AddProjectIdToCallsheets < ActiveRecord::Migration
  def change
     add_column :callsheets, :project_id, :integer
  end
end
