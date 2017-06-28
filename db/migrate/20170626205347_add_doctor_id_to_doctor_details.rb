class AddDoctorIdToDoctorDetails < ActiveRecord::Migration[5.0]
  def change
    add_column :doctor_details, :doctor_id, :integer
  end
end
