class AddNameToSemester < ActiveRecord::Migration
  def change
    add_column :semesters, :name, :string
  end
end
