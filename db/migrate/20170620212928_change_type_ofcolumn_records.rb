class ChangeTypeOfcolumnRecords < ActiveRecord::Migration[5.0]
  def change
    remove_column :records, :date_start
    remove_column :records, :date_end
    add_column :records, :date_start, :datetime
    add_column :records, :date_end, :datetime
  end
end
