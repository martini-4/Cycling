class CreateBicycleAccessories < ActiveRecord::Migration[5.2]
  def change
    create_table :bicycle_accessories do |t|
      t.integer :bicycle_id, null: false
      t.integer :accessorie_id, null: false

      t.timestamps
    end
  end
end
