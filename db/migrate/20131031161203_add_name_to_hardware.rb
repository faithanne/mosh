class AddNameToHardware < ActiveRecord::Migration
  def change
    add_column :hardwares, :name, :string
  end
end
