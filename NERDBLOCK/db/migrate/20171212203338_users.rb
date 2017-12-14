class Users < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.integer :user_id, unique: true, auto_increment: true
      t.integer :billing_id
      t.integer :shipping_id
      t.string :first_name
      t.string :last_name
      t.string :password
      t.string :type
      t.string :email, unique: true
      t.string :phone

      t.timestamps
    end
  end
end
