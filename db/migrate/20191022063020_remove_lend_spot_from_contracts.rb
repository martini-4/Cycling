class RemoveLendSpotFromContracts < ActiveRecord::Migration[5.2]
  def change
    remove_column :contracts, :lend_spot, :string
  end
end
