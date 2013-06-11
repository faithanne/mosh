class Image < ActiveRecord::Base
  attr_accessible :name, :solicit_start, :submit_deadline, :test_deadline
end
