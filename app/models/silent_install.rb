class SilentInstall < ActiveRecord::Base
  attr_accessible :comment, :creation_date, :file_name, :storage_location, :user_id, :software_id, :name
  belongs_to :user
  belongs_to :software
end
