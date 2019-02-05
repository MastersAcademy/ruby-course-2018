class CreatePlaylists < ActiveRecord::Migration[5.2]
  def change
    create_table :playlists do |t|
      t.string  :title
      t.integer :songs_count, default: 0
    end
  end
end
