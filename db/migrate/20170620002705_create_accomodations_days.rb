class CreateAccomodationsDays < ActiveRecord::Migration[5.0]
  def change
    create_table :accomodations_days do |t|
      t.integer :accomodation_id
      t.integer :day_id
    end
  end
end
