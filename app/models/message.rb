class Message < ApplicationRecord
	has_many :users
	has_many :owners
	has_many :rooms

	validates :comment,
			   presence: true
end
