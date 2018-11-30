class CreateArtists < ActiveRecord::Migration[5.1]
  def up
    create_table :artists

    add_column :artists, :first_name, :string
    add_column :artists, :last_name, :string
  end

  def down
    drop_table :artists
  end
end
