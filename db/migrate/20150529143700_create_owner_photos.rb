class CreateOwnerPhotos < ActiveRecord::Migration
  def change
    create_table :owner_photos do |t|
      t.integer :owner_id
      t.string :photo

      t.timestamps null: false
    end
  end
end
