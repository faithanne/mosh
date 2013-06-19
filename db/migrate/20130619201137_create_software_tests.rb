class CreateSoftwareTests < ActiveRecord::Migration
  def change
    create_table :software_tests do |t|
      t.integer :student_tester_id
      t.date :student_test_date
      t.integer :faculty_tester_id
      t.date :faculty_test_date
      t.date :email_confirmation_date
      t.text :comment

      t.timestamps
    end
  end
end
