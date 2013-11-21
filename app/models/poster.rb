class Poster < ActiveRecord::Base
  attr_accessible :created_at, :date_needed, :name, :special_request, :image_file_name, :image_content_type, :image_file_size, :image_updated_at

  has_attached_file :image

  attr_accessible :image
end
