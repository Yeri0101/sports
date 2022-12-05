class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable
  scope :all_except, ->(user) { where.not(id: user) }
  after_create_commit { broadcast_append_to 'users' }

  has_one_attached :avatar
  has_many :activities
  has_many :bookings
  has_many :messages
  belongs_to :chatroom
  validates :address, presence: true
  validates :city, presence: true
  validates :country, presence: true
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :phone_number, presence: true
  validates :postcode, presence: true
  validates :state, presence: true
end
