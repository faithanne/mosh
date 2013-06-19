class Software < ActiveRecord::Base
  attr_accessible :comment, :name, :software_category_id, :source_url, :version, :year, :silent_install_id, :software_test_id
  has_many :installs
  has_many :softwares, through: :installs
  belongs_to :software_category
  has_one :silent_install
  has_one :software_test
end
