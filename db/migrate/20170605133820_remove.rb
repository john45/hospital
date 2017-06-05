class Remove < ActiveRecord::Migration[5.0]
  def change
    drop_table :doctors

    create_table :doctors do |t|
      t.string   :first_name
      t.string   :last_name
      t.string   :middle_name
      t.date     :born
      t.text     :about
      t.references :manager, index: true
      t.timestamps
    end

  end
end
