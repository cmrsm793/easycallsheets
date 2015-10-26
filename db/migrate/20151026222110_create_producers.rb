class CreateProducers < ActiveRecord::Migration
  def change
    create_table :producers do |t|
      t.string :name
      t.integer :project_id

      t.timestamps null: false
    end
  end
end
