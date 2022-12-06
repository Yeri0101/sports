class Chatroom < ApplicationRecord
  has_many :messages
  has_many :user
  belongs_to :activity
end
