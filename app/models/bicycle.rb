class Bicycle < ApplicationRecord
	attachment :proof_picture
	belongs_to :owner
	belongs_to  :handle
	belongs_to  :bicycle_type
	has_many :exhibition_spots, dependent: :destroy
	has_many :rooms, dependent: :destroy
	has_many :contracts
	has_many :bicycle_accessories, dependent: :destroy
	has_many :accessories, through: :bicycle_accessories
	has_many :bicycle_pictures, dependent: :destroy
	has_many :lend_spots, dependent: :destroy
	has_many :return_spots, dependent: :destroy
	has_many :reviews, dependent: :destroy
	has_many :lend_days, dependent: :destroy
	validates :bicycle_type_id,:handle_id,:name,:price,:proof_picture,:buyer_name,
			   presence: true
	# cocoon使用時の記述
	accepts_nested_attributes_for :bicycle_pictures, allow_destroy: true
	accepts_nested_attributes_for :exhibition_spots, allow_destroy: true
	accepts_nested_attributes_for :lend_days, allow_destroy: true
	accepts_nested_attributes_for :lend_spots, allow_destroy: true
	accepts_nested_attributes_for :return_spots, allow_destroy: true
end
