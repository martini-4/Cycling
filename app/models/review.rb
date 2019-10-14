class Review < ApplicationRecord
	belongs_to :bicycle, optional: true
	validates :review_message,
			   presence: true
end
