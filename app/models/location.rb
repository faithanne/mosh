class Location < ActiveRecord::Base
  attr_accessible :comment, :location_type_id, :room, :workstation_id
end
