class Genres < ActiveRecord::Migration[5.1]
  def change
    create_table :genre do |t|
      t.string :genre_name, unique: true
      t.string :genre_description
      t.timestamps
    end
  end
end
