class CreateSoftwareCategories < ActiveRecord::Migration
  def change
    create_table :software_categories do |t|
      t.string :name

      t.timestamps
    end
  end
end
