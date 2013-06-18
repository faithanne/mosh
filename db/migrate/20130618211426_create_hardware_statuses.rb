class CreateHardwareStatuses < ActiveRecord::Migration
  def change
    create_table :hardware_statuses do |t|

      t.timestamps
    end
  end
end
