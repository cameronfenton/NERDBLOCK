class Distributor < ActiveRecord::Migration[5.1]
  def change
    create_table :distributor do |t|
      t.integer :address_id
      t.string :distributor_name
      t.string :distributor_phone
      t.string :distributor_email, unique: true
      t.timestamps
    end
  end
end
