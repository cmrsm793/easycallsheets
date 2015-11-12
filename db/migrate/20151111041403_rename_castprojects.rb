class RenameCastprojects < ActiveRecord::Migration
  def change
    rename_table :castprojects, :cast_projects
    rename_table :crewprojects, :crew_projects
  end
end
