class Image < ActiveRecord::Base
  attr_accessible :install_id, :name, :solicit_start, :submit_deadline, :test_deadline
end
