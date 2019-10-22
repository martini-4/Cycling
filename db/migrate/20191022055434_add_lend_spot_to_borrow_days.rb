class AddLendSpotToBorrowDays < ActiveRecord::Migration[5.2]
  def change
    add_column :borrow_days, :lend_spot, :string
  end
end
