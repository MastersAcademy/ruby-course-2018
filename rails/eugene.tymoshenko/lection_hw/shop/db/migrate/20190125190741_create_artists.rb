class CreateArtists < ActiveRecord::Migration[5.2]
  def change
    create_table :artists

    add_column :artists, :first_name, :string
    add_column :artists, :last_name, :string
  end
end
