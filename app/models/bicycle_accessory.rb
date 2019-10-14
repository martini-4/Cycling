class BicycleAccessory < ApplicationRecord
	belongs_to :bicycle, optional: true
	belongs_to :accessory
	# accepts_nested_attributes_for :bicycle, allow_destroy: true
end
