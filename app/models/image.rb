class Image < ActiveRecord::Base
  attr_accessible :name, :solicit_start, :submit_deadline, :test_deadline
  has_many :installs
  has_many :softwares, through: :installs
  has_many :requests
end
