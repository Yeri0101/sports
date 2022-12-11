class Review < ApplicationRecord
  belongs_to :activity
  belongs_to :user
  validates :comment, presence: true
  validates :comment, length: { maximum: 1000, minimum: 10 }
end
