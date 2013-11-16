class SilentInstall < ActiveRecord::Base
  attr_accessible :comment, :creation_date, :file_name, :storage_location, :user_id, :name, :software_id
  belongs_to :user
  belongs_to :software
end
