class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.text :p_first_name
      t.text :p_last_name
      t.text :p_middle_name
      t.date :p_birthday
      t.text :p_address
      t.text :p_address_2
      t.text :p_city
      t.text :p_state
      t.string :p_zip_code
      t.references :practice, index: true

      t.timestamps
    end
  end
end
