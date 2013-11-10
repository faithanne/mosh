class SoftwareCategory < ActiveRecord::Base
  attr_accessible :name
  has_many :softwares
end
