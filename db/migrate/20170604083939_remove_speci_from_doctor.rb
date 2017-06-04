class RemoveSpeciFromDoctor < ActiveRecord::Migration[5.0]
  def change
    remove_column :doctors, :specialization
  end
end
