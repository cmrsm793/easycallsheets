class RemoveNameColumnAddFirstLastName < ActiveRecord::Migration
  def change
    remove_column :profiles, :name
    add_column :profiles, :first_name, :string
    add_column :profiles, :last_name, :string
  end
end
