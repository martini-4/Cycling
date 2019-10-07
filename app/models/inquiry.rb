class Inquiry < ApplicationRecord
	has_many :replies
	validates :inquirer_name,:inquirer_mail,:inquiry_content,
			  presence: true
end
