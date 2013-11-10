class RemoveSoftwareCategoryFromRequest < ActiveRecord::Migration
  def up
    remove_column :requests, :software_category_id
  end

  def down
    add_column :requests, :software_category_id, :integer
  end
end
