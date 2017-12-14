class Address < ActiveRecord::Migration[5.1]
  def change
    create_table :address do |t|
      t.integer :address_id, unique: true, auto_increment: true
      t.string :apt_number
      t.string :building_number
      t.string :street
      t.string :city
      t.string :province
      t.string :postal_code

      t.timestamps
    end
  end
end
