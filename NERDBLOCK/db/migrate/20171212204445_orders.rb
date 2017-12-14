class Orders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.integer :order_id, unique: true, auto_increment: true
      t.integer :user_id
      t.integer :subscription_id
      t.decimal :monthly_price

      t.timestamps
    end
  end
end
