class Users < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.integer :billing_id
      t.integer :shipping_id
      t.string :first_name
      t.string :last_name
      t.string :password_digest
      t.string :userType, default: 'c'
      t.string :email, unique: true, index: true
      t.string :phone
      t.string :activation_digest
      t.boolean :activated, default: 't'
      t.datetime :activated_at
      t.string :remember_digest
      t.string :reset_digest
      t.datetime :reset_sent_at
      t.timestamps
    end
  end
end
