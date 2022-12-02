class Activity < ApplicationRecord
  enum :category, %i[Badminton Basketball Bicycle Fitness Football Handball Running Squash Swimming Tennis Yoga]

  belongs_to :user

  has_one_attached :image
  has_many :bookings, dependent: :destroy
  has_many :reviews, dependent: :destroy

  validates :address, presence: true
  validates :category, presence: true
  validates :description, presence: true
  # validates :end_date, presence: true
  validates :name, presence: true
  # validates :start_date, presence: true
  # validates :date, presence: true

  # private

  # def date
  # return if end_date.blank? || start_date.blank?

    # if end_date < start_date
      # errors.add(:end_date, "Must be selected after the start date")
    # else
      # false
    # end
  # end
end
