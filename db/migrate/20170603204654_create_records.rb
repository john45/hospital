class CreateRecords < ActiveRecord::Migration[5.0]
  def change
    create_table :records do |t|
      t.references :doctor
      t.references :patient
      t.date       :date_start
      t.date       :date_end
      t.boolean    :confirm, default: false
      t.boolean    :finish, default: false
      t.timestamps
    end
  end
end
