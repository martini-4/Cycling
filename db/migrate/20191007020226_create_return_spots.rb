class CreateReturnSpots < ActiveRecord::Migration[5.2]
  def change
    create_table :return_spots do |t|
      t.integer :bicycle_id, null: false
      t.string :return_spot,null: false, limit: 30

      t.timestamps
    end
  end
end
