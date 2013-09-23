class AddAnotherFlagToUser < ActiveRecord::Migration
  def change
    add_column :users, :non_csit_faculty, :boolean
  end
end
