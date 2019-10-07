class CreateDepositTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :deposit_types do |t|
      t.string :deposit_type, null: false

      t.timestamps
    end
  end
end
