class CreateRequests < ActiveRecord::Migration
  def change
    create_table :requests do |t|
      t.string :name
      t.date :year
      t.text :comment
      t.integer :software_category_id
      t.string :source_url
      t.text :instructions
      t.integer :request_status_id
      t.integer :user_id
      t.integer :image_id

      t.timestamps
    end
  end
end
