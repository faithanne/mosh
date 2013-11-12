class RemovePosterIdFromPoster < ActiveRecord::Migration
  def up
    remove_column :posters, :poster_id
  end

  def down
    add_column :posters, :poster_id, :integer
  end
end
