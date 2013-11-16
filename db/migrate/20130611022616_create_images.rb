class CreateFiles < ActiveRecord::Migration
def change
  create_table :files do |t|
  t.string :name
  # If using MySQL, blobs default to 64k, so we have to give
  # an explicit size to extend them
  t.binary :data, :limit => 1.megabyte
  end
end
end