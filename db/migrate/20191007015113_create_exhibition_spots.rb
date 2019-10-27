class CreateExhibitionSpots < ActiveRecord::Migration[5.2]
  def change
    create_table :exhibition_spots do |t|
      t.integer :bicycle_id, null: false
      t.integer :city_id, null: false

      t.timestamps
    end
  end
end
