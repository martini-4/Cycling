class RenamePictureColumnToOwners < ActiveRecord::Migration[5.2]
  def change
  	rename_column :owners, :picture, :picture_id
  end
end
