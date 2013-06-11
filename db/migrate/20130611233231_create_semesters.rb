class CreateSemesters < ActiveRecord::Migration
  def change
    create_table :semesters do |t|
      t.date :start_date
      t.date :end_date
      t.date :advisement_start
      t.integer :term_id
      t.date :year
      t.date :advisement_end

      t.timestamps
    end
  end
end
