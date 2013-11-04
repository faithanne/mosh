class AddNameToWorkstations < ActiveRecord::Migration
  def change
    add_column :workstations, :name, :string
  end
end
