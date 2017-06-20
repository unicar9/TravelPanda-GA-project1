class CreateTrips < ActiveRecord::Migration[5.0]
  def change
    create_table :trips do |t|
      t.text :name
      t.date :start_date
      t.date :end_date
      t.text :destination
      t.integer :days

      t.timestamps
    end
  end
end
