class Room < ApplicationRecord
	belongs_to :owner
	belongs_to :user
	belongs_to :bicycle, optional: true
	has_many :messages, dependent: :destroy

end
