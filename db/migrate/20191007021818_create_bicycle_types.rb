class CreateBicycleTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :bicycle_types do |t|
      t.string :bicycletype, null: false

      t.timestamps
    end
  end
end
