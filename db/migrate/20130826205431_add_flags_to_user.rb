class AddFlagsToUser < ActiveRecord::Migration
  def change
    add_column :users, :management, :boolean
    add_column :users, :admin, :boolean
  end
end
