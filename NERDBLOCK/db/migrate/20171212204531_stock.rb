class Stock < ActiveRecord::Migration[5.1]
  def change
    create_table :stock do |t|
      t.integer :item_id, unique:true
      t.integer :distributor_id
      t.integer :item_quantity
      t.integer :item_refill_quantity
      t.decimal :item_refill_cost
      t.timestamps
    end
  end
end
