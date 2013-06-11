class CreateSoftwares < ActiveRecord::Migration
  def change
    create_table :softwares do |t|
      t.string :name
      t.date :year
      t.text :comment
      t.string :source_url
      t.integer :software_category_id
      t.string :version
      t.integer :install_id

      t.timestamps
    end
  end
end
