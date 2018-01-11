class Stock < ActiveRecord::Migration[5.1]
  def up
    create_table :stocks do |t|
      t.integer :distributor_id
      t.integer :item_quantity
      t.integer :item_refill_quantity
      t.decimal :item_refill_cost
      t.timestamps
    end
  end
end
