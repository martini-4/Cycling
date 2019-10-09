class Owner < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable



  attachment :proof_picture
  attachment :picture
  belongs_to  :sex
  has_many :payees, dependent: :destroy
  has_many :bicycles, dependent: :destroy
  has_many :rooms, dependent: :destroy
  has_many :messages, dependent: :destroy
  has_many :contracts
  accepts_nested_attributes_for :payees
  validates :email, :lastname_kanji, :firstname_kanji, :lastname_kana, :firstname_kana,:mobile, :address, :sex_id ,:proof_picture, :nickname,:bank_stor_name,:bank_account_number,:bank_account_name,:deposit_type_id,
		        presence: true

end
