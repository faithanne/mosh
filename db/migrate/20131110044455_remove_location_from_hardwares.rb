class RemoveLocationFromHardwares < ActiveRecord::Migration
  def up
    remove_column :hardwares, :location_id
  end

  def down
    add_column :hardwares, :location_id, :integer
  end
end
