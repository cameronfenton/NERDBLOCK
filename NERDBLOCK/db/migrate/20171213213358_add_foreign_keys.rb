class AddForeignKeys < ActiveRecord::Migration[5.1]
  def change
    add_foreign_key :users, :address, column: :billing_id, primary_key: :id
    add_foreign_key :users, :address, column: :shipping_id, primary_key: :id
    add_foreign_key :subscriptions, :user, column: :user_id, primary_key: :id
    add_foreign_key :subscriptions, :genre, column: :genre_id, primary_key: :id
    add_foreign_key :subscriptions, :subscription_options, column: :option_id, primary_key: :id
    add_foreign_key :orders, :users, column: :user_id, primary_key: :id
    add_foreign_key :orders, :subscriptions, column: :subscription_id, primary_key: :id
    add_foreign_key :distributor, :address, column: :address_id, primary_key: :id
    add_foreign_key :stock, :item, column: :item_id, primary_key: :id
    add_foreign_key :stock, :distributor, column: :distributor_id, primary_key: :id
  end
end
