class Genres < ActiveRecord::Migration[5.1]
  def change
    create_table :genre do |t|
      t.integer :genre_id, unique: true, auto_increment: true
      t.string :genre_name
      t.string :genre_description

      t.timestamps
    end
  end
end
