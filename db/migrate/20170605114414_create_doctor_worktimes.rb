class CreateDoctorWorktimes < ActiveRecord::Migration[5.0]
  def change
    create_table :doctor_worktimes do |t|
      t.integer :doctor_id
      t.string :days, default: '[monday, tuesday, wednesday, thurteday, friday]'
      t.integer :start_hours, default: 8
      t.integer :start_minutes, default: 0
      t.integer :finish_hours, default: 18
      t.integer :finish_minutes, default: 0
      t.integer :lunch_start, default: 13
      t.integer :lunch_finish, default: 14

      t.timestamps
    end
  end
end
