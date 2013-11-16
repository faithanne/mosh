class Poster < ActiveRecord::Base
  attr_accessible :created_at, :date_needed, :name, :special_request

  has_attached_file :image
end
