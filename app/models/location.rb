class Location < ActiveRecord::Base
  attr_accessible :comment, :location_type_id, :room
  belongs_to :location_type
  has_many :after_hours_accesses
  has_many :workstations
  has_many :hours
end
