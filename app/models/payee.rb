class Payee < ApplicationRecord
	belongs_to :owner
	has_one :deposit_type
	validates :stor_name,:account_number,:accout_name,
				 presence: true
end
