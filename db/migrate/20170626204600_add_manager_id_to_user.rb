class AddManagerIdToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :manager_id, :integer, index: true
  end
end
