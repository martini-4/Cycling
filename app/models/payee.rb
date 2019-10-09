class Payee < ApplicationRecord
	belongs_to :owner
	belongs_to :deposit_type
	validates :stor_name,:account_number,:account_name,
				 presence: true
end
