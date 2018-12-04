class CreatePlaylists < ActiveRecord::Migration[5.1]
  def up
    create_table :playlists

    add_column :playlists, :name, :string
    add_column :playlists, :description, :text
    add_column :playlists, :user_id, :integer

  end

  def down
    drop_table :playlists
  end
end
