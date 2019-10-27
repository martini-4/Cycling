class CreateBorrowDays < ActiveRecord::Migration[5.2]
  def change
    create_table :borrow_days do |t|
      t.integer :contract_id, null:false
      t.date :borrow_day, null:false
      t.string :lend_spot, null: false
      t.string :return_spot, null: false

      t.timestamps
    end
  end
end
