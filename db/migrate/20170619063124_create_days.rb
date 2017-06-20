class CreateDays < ActiveRecord::Migration[5.0]
  def change
    create_table :days do |t|
      t.date :trip_date
      t.integer :trip_id

      t.timestamps
    end
  end
end
