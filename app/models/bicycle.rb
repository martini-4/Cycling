class Bicycle < ApplicationRecord
	attachment :id_picture
	belongs_to :owner
	belongs_to  :handle
	belongs_to  :bicycle_type
	has_many :rooms, dependent: :destroy
	has_many :contracts
	has_many :bicycle_accessories, dependent: :destroy
	has_many :lend_spots, dependent: :destroy
	has_many :return_spots, dependent: :destroy
	has_many :exhibition_spots, dependent: :destroy
	has_many :reviews, dependent: :destroy
	has_many :lend_days, dependent: :destroy
	validates :bicycle_type_id,:handle_id,:name,:price,:id_picture,:buyer_name,
			   presence: true
end
