class AddTripIdToTraveler < ActiveRecord::Migration[5.2]
  def change
      add_column :travelers, :trip_id, :integer
  end
end
