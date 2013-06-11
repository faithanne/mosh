class RemovingInstallIds < ActiveRecord::Migration
  def change
    remove_column :images, :install_id
    remove_column :softwares, :install_id
  end
end
