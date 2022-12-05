class Chatroom < ApplicationRecord
  validates_uniqueness_of :name
  scope :public_chatroms, -> { where(is_private: false) }
  after_create_commit { broadcast_append_to 'rooms' }
  has_many :messages
  has_many :user
  belongs_to :activity
end
