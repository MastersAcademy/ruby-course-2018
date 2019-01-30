class CreateRooms < ActiveRecord::Migration[5.2]
  def change
    create_table :rooms do |t|
      t.string :title
      t.timestamps
    end
    add_reference :messages, :room, foreign_key: true
  end
end
