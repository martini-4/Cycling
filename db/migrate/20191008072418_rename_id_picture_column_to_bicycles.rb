class RenameIdPictureColumnToBicycles < ActiveRecord::Migration[5.2]
  def change
  	rename_column :bicycles, :id_picture, :proof_picture_id
  end
end
