class RemoveWorkstationFromLocation < ActiveRecord::Migration
  def up
    remove_column :locations, :workstation_id
  end

  def down
    add_column :locations, :workstation_id, :integer
  end
end
