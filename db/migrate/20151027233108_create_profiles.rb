class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :name
      t.string :phone
      t.datetime :time_format
      t.string :country

      t.timestamps null: false
    end
  end
end
