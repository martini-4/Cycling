class AddBankAccountNumberToOwners < ActiveRecord::Migration[5.2]
  def change
    add_column :owners, :bank_account_number, :string
  end
end
