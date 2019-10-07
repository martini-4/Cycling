class CreateBicyclePictures < ActiveRecord::Migration[5.2]
  def change
    create_table :bicycle_pictures do |t|
      t.integer :bicycle_id, null: false
      t.string :bicycle_picture, null: false

      t.timestamps
    end
  end
end
