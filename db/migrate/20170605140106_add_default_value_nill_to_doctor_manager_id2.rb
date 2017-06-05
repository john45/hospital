class AddDefaultValueNillToDoctorManagerId2 < ActiveRecord::Migration[5.0]
  def change
    remove_column :doctors, :manager_id
    add_column :doctors, :manager_id, :integer, null: true, default: 0, index: true
  end
end
