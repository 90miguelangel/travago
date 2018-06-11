class AddTripIdToResource < ActiveRecord::Migration[5.2]
  def change
    add_column :resources, :trip_id, :integer
  end
end
