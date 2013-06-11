class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string :name
      t.datetime :solicit_start
      t.datetime :submit_deadline
      t.datetime :test_deadline
      t.integer :install_id

      t.timestamps
    end
  end
end
