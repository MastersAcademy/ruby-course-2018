class CreateSongs < ActiveRecord::Migration[5.2]
  def change
    create_table :songs do |t|
      t.string :artist
      t.string :name
      t.string :genre
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
