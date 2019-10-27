class CreateBicycles < ActiveRecord::Migration[5.2]
  def change
    create_table :bicycles do |t|
      t.integer :owner_id, null: false
      t.integer :bicycle_type_id, null: false
      t.integer :handle_id, null: false
      t.string :name, null: false, index: true
      t.integer :price, null: false
      t.string :description, limit: 200
      t.string :buyer_name, null: false
      t.string :proof_picture_id, null: false
      t.boolean :approval, default: false, null: false

      t.timestamps
    end
  end
end
