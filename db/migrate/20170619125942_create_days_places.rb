class CreateDaysPlaces < ActiveRecord::Migration[5.0]
  def change
    create_table :days_places do |t|
      t.integer :day_id
      t.integer :place_id
    end
  end
end
