class BicycleAccessory < ApplicationRecord
	has_many :bicycles
	has_one :accessory
end
