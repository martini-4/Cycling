class RenameUsersColumnToPicture < ActiveRecord::Migration[5.2]
  def change
  	rename_column :users, :picture, :picture_id
  end
end
