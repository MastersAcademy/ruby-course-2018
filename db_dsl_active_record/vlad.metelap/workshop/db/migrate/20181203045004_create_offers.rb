class CreateOffers < ActiveRecord::Migration[5.1]
  def up
    create_table :offers
    add_column :offers, :offer_name, :string
    add_column :offers, :price,   :float
    add_column :offers, :discount,:float
    add_column :offers, :book_id, :integer
    add_column :offers, :user_id, :integer
  end

  def down
    drop_table :offers
  end
end
