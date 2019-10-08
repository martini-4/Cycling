class Bicycle < ApplicationRecord
	attachment :id_picture
	belongs_to :owner
	has_many :rooms, dependent: :destroy
	has_many :contracts
	has_many :bicycle_accessories, dependent: :destroy
	has_many :lend_spots, dependent: :destroy
	has_many :return_spots, dependent: :destroy
	has_many :exhibition_spots, dependent: :destroy
	has_many :reviews, dependent: :destroy
	has_many :lend_days, dependent: :destroy
	has_one  :handle
	has_one  :bicycle_type
	validates :bicycle_type_id,:handle_id,:name,:price,:id_picture,:buyer_name,
			   presence: true
end
