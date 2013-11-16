class AddNameToInstalls < ActiveRecord::Migration
  def change
    add_column :installs, :name, :string
  end
end
