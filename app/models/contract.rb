class Contract < ApplicationRecord
	belongs_to :owner
	belongs_to :user
	belongs_to :bicycle, optional: true
	has_many :borrow_days
	validates :lend_spot,:return_spot,:price,:total_price,:payment_method,
presence: true
end
