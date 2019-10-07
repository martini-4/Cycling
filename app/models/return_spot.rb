class ReturnSpot < ApplicationRecord
	belongs_to :bicycle
	validates :return_spot,
			   presence: true
end
