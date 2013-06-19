class Request < ActiveRecord::Base
  attr_accessible :comment, :image_id, :instructions, :name, :request_status_id, :software_category_id, :source_url, :user_id, :year, :software_id, :silent_install_id, :software_test_id
  belongs_to :software_category
  belongs_to :request_status
  belongs_to :image
  has_one :software
  has_one :silent_install
  has_one :software
end
