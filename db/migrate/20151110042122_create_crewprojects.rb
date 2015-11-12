class CreateCrewprojects < ActiveRecord::Migration
  def change
    create_table :crewprojects do |t|
      t.belongs_to :crew, index: true
      t.belongs_to :project, index: true
    end
  end
end
