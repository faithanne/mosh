class AddNameToSilentInstalls < ActiveRecord::Migration
  def change
    add_column :silent_installs, :name, :string
  end
end
