class CreateContracts < ActiveRecord::Migration[5.2]
  def change
    create_table :contracts do |t|
      t.integer :user_id, null: false
      t.integer :owner_id, null: false
      t.integer :bicycle_id, null: false
      t.string :lend_spot, null: false
      t.string :return_spot, null: false
      t.integer :price, null: false
      t.integer :total_price, null: false
      t.string :payment_method, null: false

      t.timestamps
    end
  end
end
