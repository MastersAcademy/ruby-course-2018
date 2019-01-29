class AddColumnToPhotos < ActiveRecord::Migration[5.1]
  def up
    add_reference :photos, :user, foreign_key: true
  end

  def down
    remove_column :photos, :user_id
  end
end
