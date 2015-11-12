class CreateTable < ActiveRecord::Migration
  def change
    create_table :castprojects do |t|
      t.belongs_to :cast, index: true
      t.belongs_to :project, index: true
    end
    drop_table :casts_projects
    drop_table :crews_projects
  end
end
