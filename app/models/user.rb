class User < ApplicationRecord
  has_one_attached :avatar

  has_many :activities, dependent: :destroy
  has_many :bookings, dependent: :destroy

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable

  has_one_attached :avatar

  has_many :activities, dependent: :destroy
  has_many :bookings, dependent: :destroy

  validates :address, presence: true
  validates :city, presence: true
  validates :country, presence: true
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :phone_number, presence: true
  validates :postcode, presence: true
  validates :state, presence: true
end
