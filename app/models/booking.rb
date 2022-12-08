class Booking < ApplicationRecord
  belongs_to :activity
  belongs_to :user

  # rails uniqueness scope look google your friend
end
