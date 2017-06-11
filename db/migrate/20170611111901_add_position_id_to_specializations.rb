class AddPositionIdToSpecializations < ActiveRecord::Migration[5.0]
  def change
    add_column :specializations, :position_id, :integer
  end
end
