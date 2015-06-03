class CreateOwners < ActiveRecord::Migration
  def change
    create_table :owners do |t|
      t.string :nome
      t.text :note
      t.string :address
      t.string :cap
      t.string :municipality
      t.string :province
      t.float :lat
      t.float :lon
      t.string :level
      t.date :signed_since

      t.timestamps null: false
    end
  end
end
