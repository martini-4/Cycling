class RenameProofPictureColumnToOwners < ActiveRecord::Migration[5.2]
  def change
  	rename_column :owners, :proof_picture, :proof_picture_id
  end
end
