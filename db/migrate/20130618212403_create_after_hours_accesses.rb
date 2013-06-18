class CreateAfterHoursAccesses < ActiveRecord::Migration
  def change
    create_table :after_hours_accesses do |t|
      t.integer :location_id
      t.integer :semester_id
      t.string :first_name
      t.string :last_name
      t.integer :user_id

      t.timestamps
    end
  end
end
