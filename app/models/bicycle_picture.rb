class BicyclePicture < ApplicationRecord
	attachment :artist_image
	belongs_to :bicycle
	validates :bicycle_picture,
			   presence: true
end
