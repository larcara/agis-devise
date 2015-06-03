class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.integer :owner_id
      t.integer :category_id
      t.date :date_from
      t.date :date_to
      t.time :time_from
      t.time :time_to
      t.text :weekdays
      t.text :note
      t.text :description
      t.text :photo1
      t.text :photo2
      t.text :photo3
      t.boolean :only_for_member

      t.timestamps null: false
    end
  end
end
