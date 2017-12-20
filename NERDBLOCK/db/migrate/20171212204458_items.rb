class Items < ActiveRecord::Migration[5.1]
  def change
    create_table :items do |t|
      t.string :item_name
      t.string :item_description
      t.decimal :item_price

      t.timestamps
    end
  end
end
