class CreatePayees < ActiveRecord::Migration[5.2]
  def change
    create_table :payees do |t|
      t.integer :owner_id, null:false
      t.integer :deposit_type_id, null:false
      t.string :stor_name, null:false
      t.string :account_number, null:false
      t.string :account_name, null:false

      t.timestamps
    end
  end
end
