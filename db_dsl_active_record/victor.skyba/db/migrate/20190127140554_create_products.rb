class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.belongs_to :shop, foreign_key: true

      t.timestamps
    end
  end
end
