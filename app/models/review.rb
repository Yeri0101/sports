class Review < ApplicationRecord
  belongs_to :activity
  belongs_to :user
  validates :comment, presence: true
  validates :comment, length: { maximum: 1000, minimum: 10 }

  private

  def self.ransackable_attributes(auth_object = nil)
    %w[activity_id comment created_at id updated_at user_id]
  end
end
