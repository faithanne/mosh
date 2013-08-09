class AddLocationToHardware < ActiveRecord::Migration
  def change
    add_column :hardwares, :location_id, :integer
  end
end
