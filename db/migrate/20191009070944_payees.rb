class Payees < ActiveRecord::Migration[5.2]
  def change
  	drop_table :payees
  end
end
