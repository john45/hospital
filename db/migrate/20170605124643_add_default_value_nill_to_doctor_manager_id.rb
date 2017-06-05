class AddDefaultValueNillToDoctorManagerId < ActiveRecord::Migration[5.0]
  def change
    remove_column :doctors, :manager_id
    add_column :doctors, :manager_id, :integer, default: nil
  end
end
