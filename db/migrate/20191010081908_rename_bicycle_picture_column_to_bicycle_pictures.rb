class RenameBicyclePictureColumnToBicyclePictures < ActiveRecord::Migration[5.2]
  def change
  	rename_column :bicycle_pictures, :bicycle_picture, :bicycle_picture_id
  end
end
