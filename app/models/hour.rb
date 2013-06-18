class Hour < ActiveRecord::Base
  attr_accessible :friday, :location_id, :monday, :saturday, :semester_id, :sunday, :thursday, :tuesday, :wednesday
  belongs_to :semester
  belongs_to :location
end
