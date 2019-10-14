class ReturnSpot < ApplicationRecord
	belongs_to :bicycle, optional: true
	# validates :return_spot,
	# 		   presence: true
end
