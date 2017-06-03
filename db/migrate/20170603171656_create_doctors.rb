class CreateDoctors < ActiveRecord::Migration[5.0]
  def change
    create_table :doctors do |t|
      t.string :first_name
      t.string :last_name
      t.string :middle_name
      t.date :born
      t.string :specialization
      t.references :manager, index: true
      t.text :about

      t.timestamps
    end
  end
end
