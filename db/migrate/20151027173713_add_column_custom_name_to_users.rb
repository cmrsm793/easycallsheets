class AddColumnCustomNameToUsers < ActiveRecord::Migration
  def change
    add_column :users, :custom_name, :string
  end
end
