class CreateNotes < ActiveRecord::Migration[5.0]
  def change
    create_table :notes do |t|
      t.integer :user_id
      t.text :content
      t.text :title

      t.timestamps
    end
  end
end
