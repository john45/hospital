class AddDurationToDoctorWorktime < ActiveRecord::Migration[5.0]
  def change
    add_column :doctor_worktimes, :duration, :integer
  end
end
