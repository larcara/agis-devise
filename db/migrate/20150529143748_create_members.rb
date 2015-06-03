class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.text :card_number
      t.string :first_name
      t.string :last_name
      t.string :fiscal_code
      t.string :address
      t.text :zones_of_interest
      t.text :preferred_owners
      t.text :preferred_categories
      t.text :subcribed_events

      t.timestamps null: false
    end
  end
end
