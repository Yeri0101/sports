class Activity < ApplicationRecord
  belongs_to :user
  has_one_attached :image
  has_many :activities, dependent: :destroy
end
