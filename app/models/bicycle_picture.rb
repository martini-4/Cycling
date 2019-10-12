class BicyclePicture < ApplicationRecord
	attachment :bicycle_picture
	belongs_to :bicycle
	validates :bicycle_picture,
			   presence: true
end
