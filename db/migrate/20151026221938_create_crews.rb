class CreateCrews < ActiveRecord::Migration
  def change
    create_table :crews do |t|
      t.string :name
      t.string :role
      t.string :phone_number
      t.string :email
      t.date :call_time
      t.integer :project_id
      t.integer :schedule_id

      t.timestamps null: false
    end
  end
end
