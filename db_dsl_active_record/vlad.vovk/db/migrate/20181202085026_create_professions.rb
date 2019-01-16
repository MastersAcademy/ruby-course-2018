class CreateProfessions < ActiveRecord::Migration[5.1]
  def up
    create_table :professions

    add_column :professions, :doctor,     :boolean
    add_column :professions, :lawyer,     :boolean
    add_column :professions, :dishwasher, :boolean
  end

  def down
    drop_table :professions
  end
end
