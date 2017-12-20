class Orders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.integer :user_id
      t.integer :subscription_id
      t.decimal :monthly_price
      t.timestamps
    end
  end
end
