class ChangeColumnToBorrowDay < ActiveRecord::Migration[5.2]
  def up
  	change_column :borrow_days, :lend_spot, :string, null: false
  	change_column :borrow_days, :return_spot, :string, null: false
  end

  def down
  	change_column :borrow_days, :lend_spot, :string
  	change_column :borrow_days, :return_spot, :string
  end
end
