class SoftwareCategory < ActiveRecord::Base
  attr_accessible :name
  has_many :requests
  has_many :softwares
end
