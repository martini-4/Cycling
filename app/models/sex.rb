class Sex < ApplicationRecord
	belongs_to :user
	belongs_to :owner
end
