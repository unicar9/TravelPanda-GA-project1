class CreateBills < ActiveRecord::Migration[5.0]
  def change
    create_table :bills do |t|
      t.integer :total_amount

      t.timestamps
    end
  end
end
