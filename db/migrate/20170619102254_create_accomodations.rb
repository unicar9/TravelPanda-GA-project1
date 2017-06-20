class CreateAccomodations < ActiveRecord::Migration[5.0]
  def change
    create_table :accomodations do |t|
      t.text :name
      t.text :address
      t.text :url
      t.text :image

      t.timestamps
    end
  end
end
