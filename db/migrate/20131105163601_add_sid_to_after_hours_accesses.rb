class AddSidToAfterHoursAccesses < ActiveRecord::Migration
  def change
    add_column :after_hours_accesses, :sid, :string
  end
end
