class CreateSilentInstalls < ActiveRecord::Migration
  def change
    create_table :silent_installs do |t|
      t.string :file_name
      t.string :storage_location
      t.date :creation_date
      t.text :comment
      t.integer :user_id

      t.timestamps
    end
  end
end
