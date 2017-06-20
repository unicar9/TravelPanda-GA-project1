class RenameDaysToDuration < ActiveRecord::Migration[5.0]
  def change
    rename_column :trips, :days, :duration
  end
end
