class AddSoftwareIdToSilentInstall < ActiveRecord::Migration
  def change
    add_column :silent_installs, :software_id, :integer
  end
end
