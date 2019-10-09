class AddBankAccountNameToOwners < ActiveRecord::Migration[5.2]
  def change
    add_column :owners, :bank_account_name, :string
  end
end
