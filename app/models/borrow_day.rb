class BorrowDay < ApplicationRecord
	belongs_to :contract

	validates :borrow_day,:lend_spot,:return_spot,
			   presence: true
	
end
