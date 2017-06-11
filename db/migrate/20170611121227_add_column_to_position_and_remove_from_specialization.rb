class AddColumnToPositionAndRemoveFromSpecialization < ActiveRecord::Migration[5.0]
  def change
    remove_column :specializations, :position_id
    add_column :positions, :specialization_id, :integer
  end
end
