class AddNotesToCastsCrewsRemoveNotesFromCallsheets < ActiveRecord::Migration
  def change
    add_column :casts, :notes, :text
    add_column :crews, :notes, :text
    remove_column :callsheets, :notes
  end
end
