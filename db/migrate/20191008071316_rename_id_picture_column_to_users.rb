class RenameIdPictureColumnToUsers < ActiveRecord::Migration[5.2]
  def change
  	rename_column :users, :id_picture, :proof_picture_id
  end
end
