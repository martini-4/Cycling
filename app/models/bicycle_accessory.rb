class BicycleAccessory < ApplicationRecord
	belongs_to :bicycle, optional: true
	belongs_to :accessory
	# accepts_nested_attributes_for :bicycle, allow_destroy: true

	def self.checked?(bicycle, accessory)
       self.find_by(bicycle_id: bicycle.id, accessory_id: accessory.id).present?
	end
end
