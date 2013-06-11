class CreateInstalls < ActiveRecord::Migration
  def change
    create_table :installs do |t|
      t.integer :image_id
      t.integer :software_id

      t.timestamps
    end
  end
end
