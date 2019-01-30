class CreateTracks < ActiveRecord::Migration[5.1]
  def up
    create_table :tracks

    add_column :tracks, :artist, :string
    add_column :tracks, :title, :string
    add_column :tracks, :album, :string
  end

  def down
    drop_table :tracks
  end
end
