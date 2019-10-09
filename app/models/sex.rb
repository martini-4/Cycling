class Sex < ApplicationRecord
	has_many :users
	has_many :owners
end
