class RenameBicycleAccessoriesColumnToAccessorieId < ActiveRecord::Migration[5.2]
  def change
  	rename_column :bicycle_accessories, :accessorie_id, :accessory_id
  end
end
