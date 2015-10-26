class CreateSchedules < ActiveRecord::Migration
  def change
    create_table :schedules do |t|
      t.date :time
      t.string :location
      t.text :description
      t.integer :project_id

      t.timestamps null: false
    end
  end
end
