class Subscriptions < ActiveRecord::Migration[5.1]
  def change
    create_table :subscriptions do |t|
      t.integer :user_id
      t.integer :genre_id
      t.integer :option_id
      t.datetime :start_date
      t.datetime :end_date
      t.timestamps
    end
  end
end
