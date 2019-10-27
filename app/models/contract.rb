class Contract < ApplicationRecord
	belongs_to :owner, optional: true
	belongs_to :user, optional: true
	belongs_to :bicycle, optional: true
	has_many :borrow_days, dependent: :destroy

	validates :price,:total_price,:payment_method,
			   presence: true

	# cocoon使用時の記述
	accepts_nested_attributes_for :borrow_days, allow_destroy: true

end
