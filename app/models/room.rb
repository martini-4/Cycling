class Room < ApplicationRecord
	belongs_to :owner
	belongs_to :user
	belongs_to :bicycle
	has_many :messages, dependent: :destroy

end
