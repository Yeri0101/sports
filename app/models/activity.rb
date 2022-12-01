class Activity < ApplicationRecord
  has_many :users
  has_one_attached :image
  has_many :bookings
  has_many :reviews

  def unavailable_dates
    bookings.pluck(:start_date, :end_date).map do |range|
      { from: range[0], to: range[1] }
    end
  end
end
