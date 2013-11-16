class CreatePosters < ActiveRecord::Migration
  def change
    create_table :posters do |t|
      t.integer :poster_id
      t.string :name
      t.datetime :date_needed
      t.text :special_request
      t.datetime :created_at

      t.timestamps
    end
  end
end
