class Reply < ApplicationRecord
	belongs_to :inquiry
	validates :reply_content,
			  presence: true
end
