class CreateGenres < ActiveRecord::Migration[5.1]
  def change
    create_table :genres do |t|
      t.integer :genre_id
      t.datetime :genre_name
      t.datetime :genre_description
      t.timestamps
    end
  end
end
