class RemoveSoftwareTestFromSoftwares < ActiveRecord::Migration
  def up
    remove_column :softwares, :software_test_id
  end

  def down
    add_column :softwares, :software_test_id, :integer
  end
end
