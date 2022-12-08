class Message < ApplicationRecord
  belongs_to :chatroom
  belongs_to :user

  delegate :activity, to: :chatroom
end
