class CreateSpecializations < ActiveRecord::Migration[5.0]
  def change
    create_table :specializations do |t|
      t.references :doctor, foreign_key: true
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end
