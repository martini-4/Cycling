class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.integer :user_id, null: false
      t.integer :bicycle_id, null: false
      t.string :review_message, null: false, limit: 300

      t.timestamps
    end
  end
end
