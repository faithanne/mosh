class AddNameToSoftwareTests < ActiveRecord::Migration
  def change
    add_column :software_tests, :name, :string
  end
end
