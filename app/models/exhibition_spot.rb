class ExhibitionSpot < ApplicationRecord
	has_one :city
	belongs_to :bicycle
end
