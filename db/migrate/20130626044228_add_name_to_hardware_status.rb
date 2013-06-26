class AddNameToHardwareStatus < ActiveRecord::Migration
  def change
    add_column :hardware_statuses, :name, :string
  end
end
