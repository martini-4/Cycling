class RemoveReturnSpotFromContracts < ActiveRecord::Migration[5.2]
  def change
    remove_column :contracts, :return_spot, :string
  end
end
