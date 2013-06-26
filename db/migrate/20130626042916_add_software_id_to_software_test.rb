class AddSoftwareIdToSoftwareTest < ActiveRecord::Migration
  def change
    add_column :software_tests, :software_id, :integer
  end
end
