class Message < ApplicationRecord
  delegate :activity, to: :chatroom
  belongs_to :chatroom
  belongs_to :user
  validates :message, presence: true
  validates :message, length: { maximum: 1000, minimum: 10 }
end
