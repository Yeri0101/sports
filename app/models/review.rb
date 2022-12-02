class Review < ApplicationRecord
  belongs_to :activity
  belongs_to :user

  validates :comment, presence: true
  validates :comment, length: { minimum: 10 }
end
