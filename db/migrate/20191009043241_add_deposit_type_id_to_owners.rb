class AddDepositTypeIdToOwners < ActiveRecord::Migration[5.2]
  def change
    add_column :owners, :deposit_type_id, :integer
  end
end
