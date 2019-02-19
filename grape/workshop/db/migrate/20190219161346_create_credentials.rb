class CreateCredentials < ActiveRecord::Migration[5.2]
  def change
    create_table :credentials do |t|
      t.string :name, null: false
      t.string :email, null: false
      t.string :password, null: false

      t.belongs_to :user, foreign_key: true

      t.timestamps
    end
  end
end
