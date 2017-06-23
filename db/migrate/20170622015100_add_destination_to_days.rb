class AddDestinationToDays < ActiveRecord::Migration[5.0]
  def change
    add_column :days, :destination, :text
  end
end
