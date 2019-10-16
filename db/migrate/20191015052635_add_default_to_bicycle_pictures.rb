class AddDefaultToBicyclePictures < ActiveRecord::Migration[5.2]
  def change
    add_column :bicycle_pictures, :default, :boolean, default: false, null: false
  end
end
