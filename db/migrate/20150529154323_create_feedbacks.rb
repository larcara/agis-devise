class CreateFeedbacks < ActiveRecord::Migration
  def change
    create_table :feedbacks do |t|
      t.integer :event_id
      t.integer :user_id
      t.integer :vote
      t.text :comment
      t.boolean :is_anonymous

      t.timestamps null: false
    end
  end
end
