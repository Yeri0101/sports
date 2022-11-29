class Activity < ApplicationRecord
  belongs_to :user
  has_many :activities, dependent: :destroy
  has_one_attached :image
end
