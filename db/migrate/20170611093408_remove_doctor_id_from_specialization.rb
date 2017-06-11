class RemoveDoctorIdFromSpecialization < ActiveRecord::Migration[5.0]
  def change
    remove_column :specializations, :doctor_id
  end
end
