class RemoveLocationFromLocation < ActiveRecord::Migration
  def up
    remove_column :locations, :location
  end

  def down
    add_column :locations, :location, :string
  end
end
