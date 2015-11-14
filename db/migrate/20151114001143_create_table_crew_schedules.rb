class CreateTableCrewSchedules < ActiveRecord::Migration
  def change
    create_table :crew_schedules do |t|
      t.belongs_to :crew, index: true
      t.belongs_to :schedule, index: true
    end
    create_table :cast_schedules do |t|
      t.belongs_to :cast, index: true
      t.belongs_to :schedule, index: true
    end
  end
end
