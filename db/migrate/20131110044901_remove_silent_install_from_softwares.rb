class RemoveSilentInstallFromSoftwares < ActiveRecord::Migration
  def up
    remove_column :softwares, :silent_install_id
  end

  def down
    add_column :softwares, :silent_install_id, :integer
  end
end
