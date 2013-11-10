class Software < ActiveRecord::Base
  attr_accessible :comment, :name, :software_category_id, :source_url, :version, :year
  has_many :installs
  has_many :images, through: :installs
  belongs_to :software_category
  has_many :requests
  has_many :software_tests
  has_many :silent_installs
end
