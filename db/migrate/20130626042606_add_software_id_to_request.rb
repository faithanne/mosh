class AddSoftwareIdToRequest < ActiveRecord::Migration
  def change
    add_column :requests, :software_id, :integer
  end
end
