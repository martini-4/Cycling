class RenameProofPictureColumnToUsers < ActiveRecord::Migration[5.2]
  def change
  	rename_column :users, :proof_picture, :proof_picture_id
  end
end
