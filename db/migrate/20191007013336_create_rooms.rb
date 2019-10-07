class CreateRooms < ActiveRecord::Migration[5.2]
  def change
    create_table :rooms do |t|
      t.integer :owner_id, null:false
      t.integer :user_id, null:false
      t.integer :bicycle_id, null:false

      t.timestamps
    end
  end
end
