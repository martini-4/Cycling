class Message < ApplicationRecord
	belongs_to :room
	has_many :users
	has_many :owners

	validates :comment,
			   presence: true
end
