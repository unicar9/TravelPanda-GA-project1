class AddUrlToPlaces < ActiveRecord::Migration[5.0]
  def change
    add_column :places, :url, :text
  end
end
