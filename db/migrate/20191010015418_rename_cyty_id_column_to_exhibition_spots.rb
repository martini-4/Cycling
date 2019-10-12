class RenameCytyIdColumnToExhibitionSpots < ActiveRecord::Migration[5.2]
  def change
  	rename_column :exhibition_spots, :cyty_id, :city_id
  end
end
