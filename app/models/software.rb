class Software < ActiveRecord::Base
  attr_accessible :comment, :name, :software_category_id, :source_url, :version, :year, :software_install_id, :software_test_id
  has_many :installs
  has_many :images, through: :installs
  belongs_to :software_category
  has_many :silent_installs
  has_many :software_tests
  has_many :requests
end
