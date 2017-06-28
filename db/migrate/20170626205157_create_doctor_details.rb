class CreateDoctorDetails < ActiveRecord::Migration[5.0]
  def change
    create_table :doctor_details do |t|
      t.string :first_name
      t.string :last_name
      t.string :middle_name
      t.date :born
      t.integer :insurance_id

      t.timestamps
    end
  end
end
