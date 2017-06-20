class CreateTransportations < ActiveRecord::Migration[5.0]
  def change
    create_table :transportations do |t|
      t.text :name
      t.time :departure_time
      t.time :arrival_time
      t.text :departure_port
      t.text :arrival_port

      t.timestamps
    end
  end
end
