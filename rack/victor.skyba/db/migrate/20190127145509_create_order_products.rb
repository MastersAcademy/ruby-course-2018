class CreateOrderProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :order_products do |t|
      t.belongs_to :order, foreign_key: true
      t.belongs_to :product, foreign_key: true
      t.timestamps
    end
  end
end
