class CreateTableCastsProjects < ActiveRecord::Migration
  def change
    create_table :casts_projects do |t|
      t.belongs_to :cast, index: true
      t.belongs_to :project, index: true
    end
    
    create_table :crews_projects do |t|
      t.belongs_to :crew, index: true
      t.belongs_to :project, index: true
    end
    
    remove_column :casts, :project_id
    remove_column :crews, :project_id
  end
end
