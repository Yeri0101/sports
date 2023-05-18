class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable,
         :registerable,
         :recoverable,
         :rememberable,
         :validatable

  scope :all_except, ->(user) {where.not(id: user)}

  has_one_attached :avatar

  has_many :activities, dependent: :destroy
  has_many :bookings, dependent: :destroy
  has_many :reviews, dependent: :destroy
  has_many :messages, dependent: :destroy

  validates :address, presence: true
  validates :city, presence: true
  validates :country, presence: true
  validates :country_code, presence: false
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :phone_number, presence: false
  validates :postcode, presence: true
  validates :state, presence: true
  validates :username, presence: true
end
