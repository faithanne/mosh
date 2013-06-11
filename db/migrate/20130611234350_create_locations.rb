class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :room
      t.integer :location_type_id
      t.text :comment
      t.integer :workstation_id

      t.timestamps
    end
  end
end
