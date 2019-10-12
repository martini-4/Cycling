class Accessory < ApplicationRecord
	has_many :bicycle_accessories
	has_many :bicycles, through: :bicycle_accessories
end
