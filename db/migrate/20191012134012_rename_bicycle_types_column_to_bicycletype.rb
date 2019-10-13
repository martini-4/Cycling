class RenameBicycleTypesColumnToBicycletype < ActiveRecord::Migration[5.2]
  def change
  	rename_column :bicycle_types, :bicycletype, :bicycle_type
  end
end
