class AddDefaultValueNillToDoctorManagerId1 < ActiveRecord::Migration[5.0]
  def change
    change_column_default :doctors, :manager_id, nil
  end
end
