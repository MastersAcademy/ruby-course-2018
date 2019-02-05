class AddFieldsToProducts < ActiveRecord::Migration[5.1]
  def change
    add_column :products, :name, :string
    add_column :products, :quantity, :integer
    add_column :products, :price_cents, :bigint
    add_column :products, :price_currency, :string, default: 'UAH'
  end
end
