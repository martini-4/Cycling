class RenameIdPictureColumnToOwners < ActiveRecord::Migration[5.2]
  def change
  	rename_column :owners, :id_picture, :proof_picture_id
  end
end
