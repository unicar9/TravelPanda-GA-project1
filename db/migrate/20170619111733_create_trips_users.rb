class CreateTripsUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :trips_users do |t|
      t.integer :trip_id
      t.integer :user_id
    end
  end
end
