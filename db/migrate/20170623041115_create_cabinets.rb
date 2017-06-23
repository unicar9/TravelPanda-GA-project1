class CreateCabinets < ActiveRecord::Migration[5.0]
  def change
    create_table :cabinets do |t|
      t.text :name
      t.text :content
      t.integer :file_type
      t.integer :user_id

      t.timestamps
    end
  end
end
