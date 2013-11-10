class Request < ActiveRecord::Base
  attr_accessible :comment, :image_id, :instructions, :name, :request_status_id, :source_url, :user_id, :year, :software_id
  belongs_to :request_status
  belongs_to :image
  belongs_to :software
  belongs_to :user
end
