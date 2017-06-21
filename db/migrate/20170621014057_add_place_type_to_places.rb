class AddPlaceTypeToPlaces < ActiveRecord::Migration[5.0]
  def change
    add_column :places, :place_type, :integer
  end
end
