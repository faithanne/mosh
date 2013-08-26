class Semester < ActiveRecord::Base
  attr_accessible :advisement_end, :advisement_start, :end_date, :start_date, :term_id, :year, :name
  belongs_to :term
  has_many :after_hours_accesses
  has_many :hours
end
