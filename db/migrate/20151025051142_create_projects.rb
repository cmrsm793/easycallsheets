class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :projectname
      t.date :gendatetime
      t.date :shootdatetime
      t.text :message
      t.text :notes
      t.string :address
      t.boolean :isarchived
      t.boolean :sent
      t.boolean :saved

      t.timestamps null: false
    end
  end
end
