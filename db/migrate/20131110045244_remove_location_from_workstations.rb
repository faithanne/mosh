class RemoveLocationFromWorkstations < ActiveRecord::Migration
  def up
    remove_column :workstations, :location_id
  end

  def down
    add_column :workstations, :location_id, :integer
  end
end
