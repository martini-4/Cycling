class ExhibitionSpot < ApplicationRecord
	belongs_to :city
	belongs_to :bicycle
end
