class AddSoftwareInstallsToSoftware < ActiveRecord::Migration
  def change
    add_column :softwares, :silent_install_id, :integer
    add_column :softwares, :software_test_id, :integer
  end
end
