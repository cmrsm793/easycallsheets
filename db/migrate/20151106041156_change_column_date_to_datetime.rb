class ChangeColumnDateToDatetime < ActiveRecord::Migration
  def change
    change_column :projects, :gendatetime, :datetime
    change_column :projects, :shootdatetime, :datetime
    change_column :crews, :call_time, :datetime
    change_column :casts, :call_time, :datetime
    change_column :schedules, :time, :datetime
  end
end
