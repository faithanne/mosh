class Software < ActiveRecord::Base
  attr_accessible :comment, :install_id, :name, :software_category_id, :source_url, :version, :year
end
