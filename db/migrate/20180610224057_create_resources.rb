class CreateResources < ActiveRecord::Migration[5.2]
  def change
    create_table :resources do |t|
      t.integer :resource_type_id
      t.string :name
      t.integer :price

      t.timestamps
    end
  end
end
