class Activity < ApplicationRecord
  belongs_to :user
  has_many :users
  has_one_attached :image
  has_many :bookings
  has_many :reviews
  
  enum :category, %i[Badminton Basketball Bicycle Fitness Football Handball Running Squash Swimming Tennis Yoga]

  validates :address, presence: true
  validates :category, presence: true
  validates :description, presence: true
  validates :end_date, presence: true
  validates :name, presence: true
  validates :start_date, presence: true

  private

  def end_date_after_start_date
    return if end_date.blank? || start_date.blank?

    if end_date < start_date
      errors.add(:end_date, "must be after the start date")
    end
  end
end