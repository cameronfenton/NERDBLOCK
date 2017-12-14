class SubscriptionOptions < ActiveRecord::Migration[5.1]
  def change
    create_table :subscription_options do |t|
      t.integer :option_id, unique: true, auto_increment: true
      t.string :subscription_length
      t.decimal :subscription_price

      t.timestamps
    end
  end
end
