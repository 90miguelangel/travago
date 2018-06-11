class CreateTripTravelers < ActiveRecord::Migration[5.2]
  def change
    create_table :trip_travelers do |t|
      t.integer :trip_id
      t.integer :traveler_id

      t.timestamps
    end
  end
end
