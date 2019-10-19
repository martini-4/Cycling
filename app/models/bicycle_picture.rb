class BicyclePicture < ApplicationRecord
	attachment :bicycle_picture
	belongs_to :bicycle, optional: true
	validates :bicycle_picture,
			   presence: true
end
