class AddForeignKeys < ActiveRecord::Migration[5.1]
  def change
    add_foreign_key :users, :addresses, column: :billing_id, primary_key: :id
    add_foreign_key :users, :addresses, column: :shipping_id, primary_key: :id

    add_foreign_key :subscriptions, :users, column: :user_id, primary_key: :id
    add_foreign_key :subscriptions, :genres, column: :genre_id, primary_key: :id
    add_foreign_key :subscriptions, :subscription_options, column: :option_id, primary_key: :id

    add_foreign_key :orders, :users, column: :user_id, primary_key: :id
    add_foreign_key :orders, :subscriptions, column: :subscription_id, primary_key: :id

    add_foreign_key :distributors, :addresses, column: :address_id, primary_key: :id

    add_foreign_key :stocks, :items, column: :id, primary_key: :id
    add_foreign_key :stocks, :distributors, column: :distributor_id, primary_key: :id

    add_foreign_key :items, :genres, column: :genre_id, primary_key: :id
  end
end
