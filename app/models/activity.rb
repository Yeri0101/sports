class Activity < ApplicationRecord
  belongs_to :user

  has_one_attached :image

  has_many :bookings, dependent: :destroy
  has_many :reviews, dependent: :destroy
  has_many :users

  validates :address, presence: true
  validates :category, presence: true
  validates :description, presence: true
  validates :end_date, presence: true
  validates :name, presence: true
  validates :start_date, presence: true

  enum :category, %i[Badminton Basketball Bicycle Fitness Football Handball Running Squash Swimming Tennis Yoga]
end
