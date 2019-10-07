class CreateBorrowDays < ActiveRecord::Migration[5.2]
  def change
    create_table :borrow_days do |t|
      t.integer :contract_id, null:false
      t.date :borrow_day, null:false

      t.timestamps
    end
  end
end
