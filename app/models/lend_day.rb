class LendDay < ApplicationRecord
	belongs_to :bicycle, optional: true
end
