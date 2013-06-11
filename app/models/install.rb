class Install < ActiveRecord::Base
  attr_accessible :image_id, :software_id
  belongs_to :image
  belongs_to :software
end
