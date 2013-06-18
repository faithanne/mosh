class Workstation < ActiveRecord::Base
  attr_accessible :location_id, :number, :workstation_type_id
  belongs_to :location
  belongs_to :workstation_type
end
