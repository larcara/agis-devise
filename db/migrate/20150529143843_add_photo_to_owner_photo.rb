class AddPhotoToOwnerPhoto < ActiveRecord::Migration
  def up
    remove_column :owner_photos, :photo
    add_attachment :owner_photos  , :photo
  end

  def down
    remove_attachment :owner_photos, :photo
    add_column :owner_photos, :photo, :string
  end
end
