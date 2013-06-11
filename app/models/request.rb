class Request < ActiveRecord::Base
  attr_accessible :comment, :image_id, :instructions, :name, :request_status_id, :software_category_id, :source_url, :user_id, :year
  belongs_to :software_category
  belongs_to :request_status
  belongs_to :image
end
