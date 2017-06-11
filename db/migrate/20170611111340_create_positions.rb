class CreatePositions < ActiveRecord::Migration[5.0]
  def change
    create_table :positions do |t|
      t.belongs_to :doctor
      t.timestamps
    end
  end
end
