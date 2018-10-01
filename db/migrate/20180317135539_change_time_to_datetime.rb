class ChangeTimeToDatetime < ActiveRecord::Migration
  def change
    remove_column :activities, :date, :time
    add_column :activities, :date, :datetime
  end
end
