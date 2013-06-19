class Software < ActiveRecord::Base
  attr_accessible :comment, :name, :software_category_id, :source_url, :version, :year
  has_many :installs
  has_many :softwares, through: :installs
  belongs_to :software_category
  has_many :silent_installs
  has_many :software_test
  has_many :requests
end
