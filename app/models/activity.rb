class Activity < ApplicationRecord
  enum :category, %i[Badminton Basketball Bicycle Fitness Football Handball Running Swimming Tennis Yoga]

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  after_create :create_chatroom

  belongs_to :user

  has_one :chatroom, dependent: :destroy
  has_one_attached :image

  has_many :bookings, dependent: :destroy
  has_many :reviews, dependent: :destroy
  has_many :users, through: :bookings # participants of the activity

  validates :address, presence: true
  # validates :category, presence: true
  validates :description, presence: true
  validates :description, length: { maximum: 1000, minimum: 10 }
  validates :end_date, presence: true
  validates :name, presence: true, uniqueness: true
  validates :start_date, presence: true

  private

  def create_chatroom
    Chatroom.create(activity: self)
  end
end
