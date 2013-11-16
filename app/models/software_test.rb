class SoftwareTest < ActiveRecord::Base
  attr_accessible :comment, :email_confirmation_date, :faculty_test_date, :faculty_tester_id, :student_test_date, :student_tester_id, :software_id, :name
  belongs_to :faculty_tester_id, class_name: "User"
  belongs_to :student_tester_id, class_name: "User"
  belongs_to :software
end
