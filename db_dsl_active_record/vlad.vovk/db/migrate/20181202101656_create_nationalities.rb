class CreateNationalities < ActiveRecord::Migration[5.1]
  def up
    create_table :nationalities

    add_column :nationalities, :russian,  :boolean
    add_column :nationalities, :ukrainian,:boolean
    add_column :nationalities, :american, :boolean
  end

  def down
    drop_table :nationalities
  end
end
