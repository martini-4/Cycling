class AddBankStorNameToOwners < ActiveRecord::Migration[5.2]
  def change
    add_column :owners, :bank_stor_name, :string
  end
end
