class AddReturnSpotToBorrowDays < ActiveRecord::Migration[5.2]
  def change
    add_column :borrow_days, :return_spot, :string
  end
end
