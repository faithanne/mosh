class AddCsitFlagToUser < ActiveRecord::Migration
  def change
    add_column :users, :non_csit, :boolean
  end
end
