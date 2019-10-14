class LendSpot < ApplicationRecord
	belongs_to :bicycle, optional: true
end
