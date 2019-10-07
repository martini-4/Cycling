class Review < ApplicationRecord
	belongs_to :bicycle
	validates :review_message,
			   presence: true
end
