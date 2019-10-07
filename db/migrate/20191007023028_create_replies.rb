class CreateReplies < ActiveRecord::Migration[5.2]
  def change
    create_table :replies do |t|
      t.integer :inquiry_id, null: false
      t.string :reply_content, null: false

      t.timestamps
    end
  end
end
