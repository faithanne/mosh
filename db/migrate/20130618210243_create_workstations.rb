class CreateWorkstations < ActiveRecord::Migration
  def change
    create_table :workstations do |t|
      t.integer :location_id
      t.integer :number
      t.integer :workstation_type_id

      t.timestamps
    end
  end
end
