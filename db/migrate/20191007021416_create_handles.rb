class CreateHandles < ActiveRecord::Migration[5.2]
  def change
    create_table :handles do |t|
      t.string :handle_type, null: false, limit: 30

      t.timestamps
    end
  end
end
