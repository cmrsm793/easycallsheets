class ChangeColumnIsarchivedSentSaved < ActiveRecord::Migration
  def change
    change_column :projects, :isarchived, :boolean, :default => false
    change_column :projects, :sent, :boolean, :default => false
    change_column :projects, :saved, :boolean, :default => false
  end
end
