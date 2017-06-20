class RenameCoordinatesToMapUrl < ActiveRecord::Migration[5.0]
  def change
    rename_column :places, :coordinates, :map_url
  end
end
