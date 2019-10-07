class CreateAccessories < ActiveRecord::Migration[5.2]
  def change
    create_table :accessories do |t|
      t.string :accessorie_name, null: false, limit: 30

      t.timestamps
    end
  end
end
