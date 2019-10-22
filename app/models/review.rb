class Review < ApplicationRecord
	belongs_to :bicycle
	belongs_to :user
	validates :review_message,
			   presence: true
end
