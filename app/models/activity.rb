class Activity < ApplicationRecord
  belongs_to :user
  after_create :create_chatroom

  has_one :chatroom, dependent: :destroy
  has_one_attached :image

  has_many :bookings, dependent: :destroy
  has_many :reviews, dependent: :destroy
  has_many :users, through: :bookings # participants of the activity

  validates :address, presence: true
  # validates :category, presence: true
  validates :city, presence: true
  validates :country, presence: true
  validates :description, presence: true
  validates :end_date, presence: true
  validates :name, presence: true, uniqueness: true
  validates :postcode, presence: true
  validates :start_date, presence: true
  validates :state, presence: true

  enum :category, %i[Badminton Basketball Bicycle Fitness Football Handball Running Swimming Tennis Yoga]

  def create_chatroom
    Chatroom.create(activity: self)
  end
end
