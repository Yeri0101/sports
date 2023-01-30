class Message < ApplicationRecord
  delegate :activity, to: :chatroom
  belongs_to :chatroom
  belongs_to :user
end
