class SilentInstall < ActiveRecord::Base
  attr_accessible :comment, :creation_date, :file_name, :storage_location, :user_id, :software_id
  belongs_to :users
  belongs_to :softwares
end
