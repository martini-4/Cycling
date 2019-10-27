class CreateMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :messages do |t|
      t.integer :user_id
      t.integer :owner_id
      t.string :comment, null:false

      t.timestamps
    end
  end
end
