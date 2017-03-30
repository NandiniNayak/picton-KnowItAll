class CreateTimeTables < ActiveRecord::Migration
  def change
    create_table :time_tables do |t|
      t.string :week
      t.string :day
      t.date :date
      t.time :start_time
      t.time :end_time
      t.integer :period
      t.string :teacher
      t.string :room_number
      t.string :subject
      t.string :year_group
      t.string :student_name
      t.string :equipment
      t.string :assignment_due
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
