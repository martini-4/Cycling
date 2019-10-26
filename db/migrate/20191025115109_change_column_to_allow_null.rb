class ChangeColumnToAllowNull < ActiveRecord::Migration[5.2]
  def up
    change_column :messages, :user_id,:integer, null: true
    change_column :messages, :owner_id,:integer, null: true
  end

  def down
    change_column :messages, :user_id,:integer, null: false
    change_column :messages, :owner_id,:integer, null: false
  end
end
