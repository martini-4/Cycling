class CreateLendDays < ActiveRecord::Migration[5.2]
  def change
    create_table :lend_days do |t|
      t.integer :bicycle_id, null: false
      t.date :lend_day, null: false

      t.timestamps
    end
  end
end
