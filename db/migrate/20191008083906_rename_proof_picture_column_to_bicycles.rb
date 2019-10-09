class RenameProofPictureColumnToBicycles < ActiveRecord::Migration[5.2]
  def change
  	rename_column :bicycles, :proof_picture, :proof_picture_id
  end
end
