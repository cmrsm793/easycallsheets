class AddColumnDirectorToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :director, :string
  end
end
