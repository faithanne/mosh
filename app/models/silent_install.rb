class SilentInstall < ActiveRecord::Base
  attr_accessible :comment, :creation_date, :file_name, :storage_location, :user_id
  belongs_to :users
end
